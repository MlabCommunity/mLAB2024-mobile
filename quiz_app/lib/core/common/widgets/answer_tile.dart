import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/enums/answer_result_enum.dart';
import 'spacers/horizontal_spacers.dart';
import 'vertical_divider.dart';
import '../../extensions/context_extension.dart';

class AnswerTile extends StatelessWidget {
  const AnswerTile({
    super.key,
    required this.leading,
    required this.text,
    this.iconPath,
    required this.result,
  });

  final String text;
  final String leading;
  final String? iconPath;
  final AnswerResult result;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: result.backgroundColor),
      child: ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              leading,
              style: context.textTheme.labelMedium!.copyWith(color: result.textColor),
            ),
            const MediumHSpacer(),
            const IVerticalDivider(),
          ],
        ),
        title: Text(
          text,
          style: context.textTheme.bodyMedium!.copyWith(
            color: result.textColor,
          ),
        ),
        trailing: iconPath != null ? SvgPicture.asset(iconPath!) : null,
      ),
    );
  }
}
