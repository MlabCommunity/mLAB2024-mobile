import 'package:flutter/material.dart';
import 'spacers/horizontal_spacers.dart';
import '../../extensions/context_extension.dart';
import '../../theme/app_color_scheme.dart';
import '../../extensions/add_padding_extension.dart';
import '../../theme/app_theme.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.width,
    this.icon,
    this.iconAlignment = IconAlignment.start,
    this.contentAlignment = MainAxisAlignment.center,
    this.bgColor = AppColorScheme.secondary,
    this.contentColor = AppColorScheme.primary,
  });

  final VoidCallback onPressed;
  final String text;
  final double? width;
  final Widget? icon;
  final IconAlignment? iconAlignment;
  final MainAxisAlignment contentAlignment;
  final Color? bgColor;
  final Color? contentColor;

  @override
  Widget build(BuildContext context) {
    return buttonContainer(
      context,
      buttonContent(context),
    );
  }

  Widget buttonContent(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: contentAlignment,
      children: [
        const LargeHSpacer(),
        iconAlignment == IconAlignment.start ? icon ?? Container() : Container(),
        iconAlignment == IconAlignment.start && icon != null ? const SmallHSpacer() : Container(),
        Text(
          text,
          style: context.theme.textTheme.labelLarge?.copyWith(color: contentColor),
        ),
        iconAlignment == IconAlignment.start && icon != null ? const SmallHSpacer() : Container(),
        IconAlignment.end == iconAlignment ? icon ?? Container() : Container(),
        const LargeHSpacer(),
      ],
    ).addPadding(padding: const EdgeInsets.symmetric(vertical: AppTheme.buttonVerticalPadding));
  }

  Widget buttonContainer(BuildContext context, Widget button) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(AppTheme.buttonBorderRadius),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppTheme.buttonBorderRadius),
          ),
          splashColor: contentColor!.withOpacity(0.2),
          highlightColor: contentColor!.withOpacity(0.2),
          child: button,
        ),
      ),
    );
  }
}
