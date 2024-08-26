import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'answer_tile.dart';
import 'spacers/vertical_spacers.dart';
import '../../extensions/add_padding_extension.dart';
import '../../extensions/context_extension.dart';
import '../../res/media_res.dart';
import '../../theme/app_color_scheme.dart';
import '../../../generated/l10n.dart';

class QuestionBox extends StatelessWidget {
  const QuestionBox({super.key, required this.questionNumber});

  final int questionNumber;

  //TODO: Questionbox should operate with a question model, so after receive api documentations we can implement it

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColorScheme.questionBoxContainerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: DottedBorder(
        color: AppColorScheme.border,
        strokeWidth: 1.5,
        dashPattern: const [4, 2],
        radius: const Radius.circular(8),
        borderType: BorderType.RRect,
        borderPadding: const EdgeInsets.all(0.5),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      '$questionNumber. ${S.of(context).tempQuestion}',
                      style: context.textTheme.labelMedium,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          MediaRes.pencil,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          MediaRes.trash,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SmallVSpacer(),
              Text(
                S.of(context).tempQuestionDescription,
                style: context.textTheme.bodyMedium,
              ),
              const MediumVSpacer(),
              Column(
                children: [
                  AnswerTile(leading: 'A', text: S.of(context).tempAnswer1),
                  const SmallVSpacer(),
                  AnswerTile(leading: 'B', text: S.of(context).tempAnswer2),
                  const SmallVSpacer(),
                  AnswerTile(leading: 'C', text: S.of(context).tempAnswer3),
                  const SmallVSpacer(),
                  AnswerTile(leading: 'D', text: S.of(context).tempAnswer4),
                ],
              )
            ],
          ).addPadding(
            padding: const EdgeInsets.all(24),
          ),
        ),
      ),
    );
  }
}
