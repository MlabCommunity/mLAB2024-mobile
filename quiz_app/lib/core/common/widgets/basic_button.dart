import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../extensions/context_extension.dart';
import '../../theme/app_color_scheme.dart';
import 'spacers/horizontal_spacers.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.width,
    this.icon,
    this.iconAlignment = IconAlignment.start,
    this.contentAlignment = MainAxisAlignment.center,
  });

  final VoidCallback onPressed;
  final String text;
  final double? width;
  final Widget? icon;
  final IconAlignment? iconAlignment;
  final MainAxisAlignment contentAlignment;
  final contentColor = AppColorScheme.textContrast;

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];

    if (icon != null) {
      if (iconAlignment == IconAlignment.start) {
        children.add(icon!);
        children.add(const SmallHSpacer());
        children.add(
          Text(
            text,
            style: context.textTheme.labelLarge?.copyWith(
              color: AppColorScheme.textContrast,
            ),
          ),
        );
      } else {
        children.add(
          Text(
            text,
            style: context.textTheme.labelLarge?.copyWith(
              color: AppColorScheme.textContrast,
            ),
          ),
        );
        children.add(const SmallHSpacer());
        children.add(icon!);
      }
    } else {
      children.add(
        Text(
          text,
          style: context.textTheme.labelLarge?.copyWith(
            color: AppColorScheme.textContrast,
          ),
        ),
      );
    }

    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppTheme.buttonBorderRadius),
        gradient: const LinearGradient(
          colors: [
            AppColorScheme.primaryLight,
            AppColorScheme.primary,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColorScheme.primaryLight.withOpacity(0.7),
            spreadRadius: 0,
            blurRadius: 0,
            offset: const Offset(0, -2),
          ),
          BoxShadow(
            color: AppColorScheme.primaryDark.withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: AppColorScheme.primaryDark.withOpacity(.15),
            spreadRadius: 0,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppTheme.buttonBorderRadius),
          ),
          splashColor: AppColorScheme.primaryDark,
          highlightColor: AppColorScheme.primaryDark,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppTheme.buttonVerticalPadding,
              horizontal: AppTheme.buttonHorizontalPadding,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: contentAlignment,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
