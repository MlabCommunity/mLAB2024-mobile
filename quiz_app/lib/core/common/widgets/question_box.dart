import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/question_model_interface.dart';
import '../../utils/enums/answer_result_enum.dart';
import 'dotted_border_container.dart';
import 'new_question/add_new_question_dialog.dart';
import 'new_question/add_question_dialog_answer_section.dart';
import 'answer_tile.dart';
import 'spacers/vertical_spacers.dart';
import '../../extensions/add_padding_extension.dart';
import '../../extensions/context_extension.dart';
import '../../res/media_res.dart';
import '../../theme/app_color_scheme.dart';

class QuestionBox extends ConsumerWidget {
  const QuestionBox(
      {super.key,
      required this.questionIndex,
      required this.question,
      required this.onDelete,
      required this.onEdit,
      required this.correctAnswerVisible});

  final int questionIndex;
  final QuestionModelInterface question;
  final VoidCallback onDelete;
  final bool correctAnswerVisible;
  final Function(QuestionModelInterface) onEdit;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColorScheme.questionBoxContainerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: DottedBorderContainer(
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
                    '${questionIndex + 1}. ${question.title}',
                    style: context.textTheme.labelMedium,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        AddNewQuestionDialog.show(
                          context,
                          onQuestionAdd: (newQuestion) {
                            onEdit(newQuestion);
                          },
                          question: question,
                        );
                      },
                      icon: SvgPicture.asset(
                        MediaRes.pencil,
                      ),
                    ),
                    Consumer(
                      builder: (context, ref, child) {
                        return IconButton(
                          onPressed: () {
                            onDelete();
                          },
                          icon: SvgPicture.asset(
                            MediaRes.trash,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            const MediumVSpacer(),
            ListView.builder(
              itemCount: question.answers.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final result = correctAnswerVisible
                    ? question.answers[index].isCorrect
                        ? AnswerResult.correct
                        : AnswerResult.neutral
                    : AnswerResult.neutral;
                return Column(
                  children: [
                    AnswerTile(
                      leading: Answer.values[index].name,
                      text: question.answers[index].content,
                      result: result,
                    ),
                    const SmallVSpacer(),
                  ],
                );
              },
            )
          ],
        ).addPadding(
          padding: const EdgeInsets.all(24),
        ),
      ),
    );
  }
}
