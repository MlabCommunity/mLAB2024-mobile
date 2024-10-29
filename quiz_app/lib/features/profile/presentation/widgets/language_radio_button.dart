import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/res/media_res.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';

class LanguageRadioButton<T> extends StatelessWidget {
  const LanguageRadioButton({super.key, required this.value, required this.groupValue, required this.onChanged, required this.title});

  final String title;
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    return SizedBox(
      width: double.infinity,
      child: ListTile(
        title: Text(
          title,
          style: context.textTheme.bodyMedium,
        ),
        trailing: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(
              scale: animation,
              child: child,
            );
          },
          child: SvgPicture.asset(
            isSelected ? MediaRes.languageRadioChecked : MediaRes.languageRadioUnchecked,
            key: ValueKey<bool>(isSelected),
          ),
        ),
        onTap: () => onChanged(value),
        tileColor: AppColorScheme.surfaceContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppTheme.mediumRadius),
        ),
      ),
    );
  }
}
