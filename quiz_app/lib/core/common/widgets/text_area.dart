import 'package:flutter/material.dart';
import 'spacers/vertical_spacers.dart';
import '../../extensions/context_extension.dart';
import '../../theme/app_color_scheme.dart';
import '../../theme/app_theme.dart';
import '../../../generated/l10n.dart';

class TextArea extends StatelessWidget {
  const TextArea({
    super.key,
    this.labelText,
    required this.hintText,
    required this.controller,
    this.minLines = 1,
    this.maxLines,
    this.required = true,
    this.contentPadding = AppTheme.pageDefaultSpacingSize,
    this.textStyle,
    this.enabled = true,
    this.overrideValidator,
  });

  final String? labelText;
  final String? hintText;
  final TextEditingController controller;
  final int minLines;
  final int? maxLines;
  final bool required;
  final double contentPadding;
  final TextStyle? textStyle;
  final bool enabled;
  final String? Function(String?)? overrideValidator;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText != null) ...[
            RichText(
              text: TextSpan(
                text: labelText,
                style: context.textTheme.bodyMedium,
                children: [
                  TextSpan(
                    text: required ? '*' : '',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColorScheme.error,
                    ),
                  ),
                ],
              ),
            ),
            const SmallVSpacer(),
          ],
          SizedBox(
            width: double.infinity,
            child: TextFormField(
              controller: controller,
              enabled: enabled,
              validator: overrideValidator ??
                  (value) {
                    if (required && value!.isEmpty) {
                      return S.of(context).thisFieldIsRequired;
                    }
                    return null;
                  },
              minLines: minLines,
              maxLines: maxLines,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(contentPadding).copyWith(top: 0),
                hintText: hintText,
                hintStyle: textStyle ?? context.textTheme.bodyMedium,
                fillColor: enabled ? AppColorScheme.surfaceContainer : AppColorScheme.border,
              ),
              style: textStyle ?? context.textTheme.bodyMedium?.copyWith(color: enabled ? null : AppColorScheme.textSecondary),
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
