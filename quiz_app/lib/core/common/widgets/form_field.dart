import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'spacers/vertical_spacers.dart';
import '../../extensions/context_extension.dart';
import '../../theme/app_color_scheme.dart';
import '../../../generated/l10n.dart';

class IFormField extends StatelessWidget {
  const IFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.isRequired = true,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.bgColor = AppColorScheme.dialogBackground,
    required this.controller,
    this.validator,
    this.enabled = true,
    this.formButton,
  });

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool isRequired;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Color? bgColor;
  final String? Function(String?)? validator;
  final bool? enabled;
  final Widget? formButton;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: bgColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: labelText,
                style: context.textTheme.bodyMedium,
                children: [
                  TextSpan(
                    text: isRequired ? '*' : '',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColorScheme.error,
                    ),
                  ),
                ],
              ),
            ),
            const ExtraSmallVSpacer(),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      enabled: enabled,
                      enableSuggestions: true,
                      controller: controller,
                      validator: (value) {
                        if (!isRequired) {
                          return null;
                        }
                        if (value == null || value.trim().isEmpty) {
                          return S.of(context).thisFieldIsRequired;
                        }
                        return validator?.call(value);
                      },
                      obscureText: obscureText,
                      keyboardType: keyboardType,
                      decoration: InputDecoration(
                        hintText: hintText,
                        suffixIcon: suffixIcon,
                        errorMaxLines: 6,
                      ),
                      style: context.textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.inter().fontFamily,
                      ),
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                        //FocusScope.of(context).unfocus();
                      },
                    ),
                  ),
                  formButton ?? const SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
