import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/errors/error_snackbar.dart';
import '../../../../core/common/widgets/loading_indicator.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/services/app_router.dart';
import '../../../dashboard/application/dashboard_controller.dart';
import '../../application/auth_controller.dart';
import '../../../../core/common/widgets/form_field.dart';
import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../generated/l10n.dart';
import '../widgets/password_form_field.dart';

class SignInForm extends ConsumerStatefulWidget {
  const SignInForm({super.key});

  @override
  ConsumerState createState() => _SignInFormState();
}

class _SignInFormState extends ConsumerState<SignInForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 32,
      ),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IFormField(
              controller: emailController,
              labelText: S.of(context).emailLabel,
              hintText: S.of(context).emailHint,
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
            ),
            const MediumVSpacer(),
            PasswordFormField(passwordController: passwordController),
            TextButton(
              onPressed: () {
                ref.read(appRouterProvider).push(const ForgotPasswordRoute());
              },
              child: Text(
                S.of(context).forgotPassword,
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.theme.primaryColor,
                ),
              ),
            ),
            const ExtraLargeVSpacer(),
            LoginButton(
              emailController: emailController,
              passwordController: passwordController,
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends ConsumerWidget {
  const LoginButton({super.key, required this.emailController, required this.passwordController});

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(authControllerProvider.notifier);
    final state = ref.watch(authControllerProvider);

    return state.maybeWhen(
      loading: (_) => const LoadingIndicator(),
      orElse: () {
        return BasicButton(
          onPressed: () async {
            final success = await controller.signIn(
              email: emailController.text,
              password: passwordController.text,
            );
            if (success) {
              ref.read(dashboardControllerProvider.notifier).initLoad();
              SchedulerBinding.instance.addPostFrameCallback((_) => ref.read(appRouterProvider).replaceAll([const DashboardRoute()]));
            } else {
              context.mounted
                  ? SchedulerBinding.instance.addPostFrameCallback(
                      (_) => ErrorSnackbar.show(
                        context,
                        S.of(context).somethingWentWrong,
                      ),
                    )
                  : null;
            }
          },
          text: S.of(context).loginButton,
          width: double.infinity,
        );
      },
    );
  }
}
