import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../res/media_res.dart';
import '../../theme/app_color_scheme.dart';
import '../../theme/app_theme.dart';

class ICheckbox extends StatelessWidget {
  const ICheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.height = AppTheme.checkboxDefaultHeight,
    this.width = AppTheme.checkboxDefaultWidth,
  });

  final double? height;
  final double? width;
  final bool value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      splashColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      child: SizedBox(
        width: width,
        height: height,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColorScheme.primary,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5),
            color: value ? AppColorScheme.primary : Colors.transparent,
          ),
          child: value
              ? SvgPicture.asset(
                  MediaRes.checkmark,
                  colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                )
              : null,
        ),
      ),
    );
  }
}
