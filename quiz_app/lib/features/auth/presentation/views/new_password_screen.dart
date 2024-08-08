import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/core/common/widgets/auth_form_field.dart';
import 'package:quiz_app/core/common/widgets/basic_app_bar.dart';
import 'package:quiz_app/core/common/widgets/basic_button.dart';
import 'package:quiz_app/core/extensions/add_padding_extension.dart';
import 'package:quiz_app/core/extensions/context_extension.dart';
import 'package:quiz_app/core/res/media_res.dart';
import 'package:quiz_app/core/theme/app_color_scheme.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  static const String routeName = '/new-password';

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final emailController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool obscurePassword = true;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppBar(title: 'Password reset'),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New password',
              style: context.textTheme.headlineLarge,
            ).addPadding(padding: const EdgeInsets.only(bottom: 8)),
            Text(
              'This new password must be unique to those previously used.',
              style: context.textTheme.bodyMedium!
                  .copyWith(color: AppColorScheme.textSecondary),
            ).addPadding(padding: const EdgeInsets.only(bottom: 32)),
            Form(
              key: formKey,
              child: AuthFormField(
                labelText: 'New password',
                hintText: 'Your password',
                obscureText: obscurePassword,
                required: true,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                          icon: obscurePassword
                              ? SvgPicture.asset(
                                  MediaRes.fluentEye,
                                  fit: BoxFit.scaleDown,
                                )
                              : SvgPicture.asset(
                                  MediaRes.fluentEye,
                                  fit: BoxFit.scaleDown,
                                ),
                        ),
              ).addPadding(padding: const EdgeInsets.only(bottom: 40)),
            ),
            BasicButton(
              text: 'Save and login',
              onPressed: () {
                formKey.currentState!.validate();
                kDebugMode ? debugPrint(emailController.text) : null;
              },
              width: double.infinity,
            )
          ],
        ).addPadding(padding: const EdgeInsets.symmetric(horizontal: 16)),
      ),
    );
  }
}