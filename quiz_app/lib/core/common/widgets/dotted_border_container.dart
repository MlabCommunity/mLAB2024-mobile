import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../theme/app_color_scheme.dart';
import '../../theme/app_theme.dart';

class DottedBorderContainer extends StatelessWidget {
  const DottedBorderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: AppColorScheme.dottedBorder,
      dashPattern: const [4, 2],
      strokeWidth: AppTheme.dottedBorderWidth,
      radius: const Radius.circular(AppTheme.quizListItemBorderRadius),
      borderPadding: const EdgeInsets.all(AppTheme.dottedBorderPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppTheme.quizListItemBorderRadius),
        child: child,
      ),
    );
  }
}
