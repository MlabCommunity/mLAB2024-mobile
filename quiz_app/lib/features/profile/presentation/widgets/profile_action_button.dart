import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';

class ProfileActionButton extends StatelessWidget {
  const ProfileActionButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.trailing,
    this.textColor = AppColorScheme.textPrimary,
    this.backgroundColor = AppColorScheme.surfaceContainer,
  });

  final String title;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListTile(
        title: Text(
          title,
          style: context.textTheme.bodyMedium?.copyWith(color: textColor),
        ),
        onTap: onPressed,
        tileColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppTheme.mediumRadius),
        ),
        trailing: trailing,
      ),
    );
  }
}
