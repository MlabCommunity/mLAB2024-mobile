import 'package:flutter/material.dart';
import 'spacers/horizontal_spacers.dart';
import '../../extensions/context_extension.dart';
import '../../theme/app_color_scheme.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({
    super.key,
    required this.text,
    this.color = AppColorScheme.border,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: color,
              height: 1,
            ),
          ),
          const MediumHSpacer(),
          Text(
            text,
            style: context.textTheme.labelSmall?.copyWith(
              color: color,
            ),
          ),
          const MediumHSpacer(),
          Expanded(
            child: Divider(
              color: color,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
