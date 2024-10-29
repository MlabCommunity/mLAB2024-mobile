import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/common/widgets/basic_button.dart';
import '../../../core/common/widgets/secondary_button.dart';
import '../../../core/res/media_res.dart';
import '../../../core/theme/app_color_scheme.dart';

class QuestionTypeButton extends StatelessWidget {
  const QuestionTypeButton({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final isSelected = value;

    return SizedBox(
      width: double.infinity,
      child: isSelected
          ? BasicButton(
              onPressed: () => onChanged(value),
              width: double.infinity,
              text: title,
              icon: SvgPicture.asset(
                MediaRes.radioChecked,
                colorFilter: const ColorFilter.mode(
                  AppColorScheme.textContrast,
                  BlendMode.srcIn,
                ),
              ),
              contentAlignment: MainAxisAlignment.start,
            )
          : SecondaryButton(
              onPressed: () => onChanged(value),
              text: title,
              icon: SvgPicture.asset(
                MediaRes.radioUnchecked,
                colorFilter: const ColorFilter.mode(
                  AppColorScheme.primary,
                  BlendMode.srcIn,
                ),
              ),
              width: double.infinity,
              contentAlignment: MainAxisAlignment.start,
            ),
    );
  }
}
