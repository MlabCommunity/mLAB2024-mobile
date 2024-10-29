import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/validators/validators.dart';
import '../../../../core/common/widgets/form_field.dart';
import '../../../../core/res/media_res.dart';
import '../../../../generated/l10n.dart';
import '../../application/auth_controller.dart';

class PasswordFormField extends ConsumerWidget {
  const PasswordFormField(
      {super.key, required this.passwordController, this.validate = false});

  final TextEditingController passwordController;
  final bool validate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authControllerProvider);
    final controller = ref.read(authControllerProvider.notifier);
    final obscurePassword = state.maybeWhen(
      unauthenticated: (obscurePassword) => obscurePassword,
      loading: (obscurePassword) => obscurePassword,
      orElse: () => true,
    );
    return IFormField(
      controller: passwordController,
      labelText: S.of(context).passwordLabel,
      hintText: S.of(context).passwordHint,
      obscureText: obscurePassword,
      validator: validate ? passwordValidator : null,
      suffixIcon: IconButton(
        onPressed: () {
          controller.togglePasswordVisibility();
        },
        icon: !obscurePassword
            ? SvgPicture.asset(MediaRes.fluentEye)
            : const Icon(Icons.visibility_off_outlined, color: Color(0xFF6A707C)),
      ),
    );
  }
}
