import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../extensions/context_extension.dart';
import '../../res/media_res.dart';
import '../../theme/app_color_scheme.dart';
import '../../theme/app_theme.dart';
import 'spacers/vertical_spacers.dart';

class EmptyListInfo extends StatelessWidget {
  const EmptyListInfo({
    super.key,
    this.iconPath,
    required this.message,
    this.color,
  });

  final String? iconPath;
  final String message;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconPath ?? MediaRes.wrongAnswer,
            colorFilter: ColorFilter.mode(
              color ?? AppColorScheme.disabled,
              BlendMode.srcIn,
            ),
            width: AppTheme.emptyListInfoIconSize,
          ),
          const MediumVSpacer(),
          Text(
            message,
            style: context.textTheme.headlineMedium?.copyWith(
              color: color ?? AppColorScheme.disabled,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
