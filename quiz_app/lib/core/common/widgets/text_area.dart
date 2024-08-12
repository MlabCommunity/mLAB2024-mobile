import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/extensions/context_extension.dart';
import 'package:quiz_app/core/theme/app_color_scheme.dart';
import 'package:quiz_app/core/theme/app_theme.dart';

class TextArea extends StatelessWidget {
  const TextArea({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    required this.minLines,
    required this.maxLines,
    this.required = true,
  });

  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final int minLines;
  final int maxLines;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: labelText,
            style: context.textTheme.bodyMedium,
            children: [
              TextSpan(
                text: required ? ' *' : '',
                style: context.textTheme.bodyMedium!.copyWith(
                  color: AppColorScheme.error,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: double.infinity,
          child: TextFormField(
            controller: controller,
            validator: (value) {
              if (required && (value == null || value.isEmpty)) {
                return 'This field is required';
              }
              return null;
            },
            minLines: minLines,
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
            ),
            style: context.textTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.w400,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
            onTapOutside: (event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
          ),
        ),
      ],
    );
  }
}