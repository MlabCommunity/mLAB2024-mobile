import 'package:flutter/material.dart';
import 'spacers/vertical_spacers.dart';
import '../../extensions/context_extension.dart';
import '../../theme/app_color_scheme.dart';
import '../../../generated/l10n.dart';

class QuizzSummary extends StatelessWidget {
  const QuizzSummary({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColorScheme.surfaceContainer,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).quizzSummaryTitle + title,
              style: context.textTheme.labelMedium,
            ),
            const SmallVSpacer(),
            Text(
              description,
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
