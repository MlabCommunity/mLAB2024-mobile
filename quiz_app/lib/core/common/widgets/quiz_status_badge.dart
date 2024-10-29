import 'package:flutter/material.dart';
import 'spacers/horizontal_spacers.dart';
import '../../extensions/add_padding_extension.dart';
import '../../extensions/context_extension.dart';
import '../../theme/app_theme.dart';

class QuizStatusBadge extends StatelessWidget {
  const QuizStatusBadge({super.key, required this.text, required this.backgroundColor, required this.textColor, this.leadingIcon});

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final IconData? leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppTheme.statusBadgeBorderRadius),
        color: backgroundColor,
      ),
      child: Row(
        children: [
          const MediumHSpacer(),
          if (leadingIcon != null) Icon(leadingIcon, color: textColor),
          if (leadingIcon != null) const SmallHSpacer(),
          Text(
            text,
            style: context.theme.textTheme.labelMedium?.copyWith(color: textColor),
          ).addPadding(
            padding: const EdgeInsets.symmetric(
              vertical: AppTheme.quizStatusBadgeVerticalPadding,
            ),
          ),
          const MediumHSpacer(),
        ],
      ),
    );
  }
}
