import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/common/widgets/spacers/horizontal_spacers.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/extensions/add_padding_extension.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/res/media_res.dart';
import '../../../../core/theme/app_color_scheme.dart';

class TextCheckbox extends StatelessWidget {
  const TextCheckbox(
      {super.key,
      required this.text,
      required this.value,
      required this.onChanged,
      this.height = AppTheme.textCheckboxDefaultHeight,
      this.width = AppTheme.textCheckboxDefaultWidth});

  
  final double? height;
  final double? width;
  final String text;
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
      child: Row(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColorScheme.primary,
                  width: AppTheme.textCheckboxBorderWidth,
                ),
                borderRadius: BorderRadius.circular(AppTheme.textCheckboxBorderRadius),
                color: value ? AppColorScheme.primary : Colors.transparent,
              ),
              child: value
                  ? SvgPicture.asset(
                    MediaRes.checkmark,
                    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ).addPadding(padding: const EdgeInsets.all(AppTheme.textCheckboxCheckmarkPadding))
                  : null,
            ),
          ),
          const MediumHSpacer(),
          Text(text, style: context.theme.textTheme.bodyMedium),
        ],
      ).addPadding(padding: const EdgeInsets.symmetric(vertical: AppTheme.textCheckboxVerticalPadding)),
    );
  }
}
