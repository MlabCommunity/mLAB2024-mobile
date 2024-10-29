import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/basic_app_bar.dart';
import '../../../../core/common/widgets/text_divider.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/services/app_router.dart';
import '../../../../generated/l10n.dart';
import 'sign_in_form.dart';
import '../widgets/auth_redirect_button.dart';

@RoutePage()
class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: BasicAppBar(
        title: S.of(context).signInAppBarTitle,
        onBack: () => ref.read(appRouterProvider).replaceAll([const DashboardRoute()]),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).signInHeading,
              style: context.textTheme.headlineLarge,
            ),
            const SignInForm(),
            TextDivider(text: S.of(context).dividerOr),
            const Spacer(),
            Consumer(
              builder: (context, ref, child) => AuthRedirectButton(
                text: S.of(context).signInDontHaveAccount,
                buttonText: S.of(context).registerButton,
                navigateTo: () => ref.read(appRouterProvider).replace(const SignUpRoute()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
