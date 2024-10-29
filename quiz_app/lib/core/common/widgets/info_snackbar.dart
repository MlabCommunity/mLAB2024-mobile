import 'package:flutter/material.dart';

import '../../extensions/context_extension.dart';
import '../../theme/app_color_scheme.dart';
import '../../theme/app_theme.dart';

class InfoSnackbar {
  static void show(BuildContext context, String message, {Color color = AppColorScheme.textContrast, int durationSeconds = 5}) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: context.textTheme.labelMedium?.copyWith(
          color: AppColorScheme.textContrast,
        ),
      ),
      showCloseIcon: true,
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppTheme.snackBarBorderRadius),
      ),
      duration: Duration(seconds: durationSeconds),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
