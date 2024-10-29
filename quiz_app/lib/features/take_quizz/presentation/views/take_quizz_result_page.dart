import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../core/common/widgets/answer_tile.dart';
import '../../../../core/common/widgets/dotted_border_container.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/enums/answer_indicator_enum.dart';
import '../../../../core/utils/enums/answer_result_enum.dart';
import '../../../../generated/l10n.dart';
import '../../domain/quiz_result_model.dart';
import '../../domain/take_quiz_result_question_model.dart';

@RoutePage()
class TakeQuizzResultPage extends StatelessWidget {
  const TakeQuizzResultPage({super.key, required this.quizResult});

  final QuizResultModel quizResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                  '${S.of(context).quizzTakeSummaryYourResult}: ${quizResult.correctAnswers}/${quizResult.quizDetails.questions.length}'),
            ),
            const SmallVSpacer(),
            Expanded(
              child: ListView.separated(
                itemCount: quizResult.quizDetails.questions.length,
                itemBuilder: (context, index) {
                  return QuestionResultBox(
                    questionModel: quizResult.quizDetails.questions[index],
                    userAnswerId: quizResult.userAnswers
                        .where((element) => element.questionId == quizResult.quizDetails.questions[index].id)
                        .first
                        .answerId,
                    correctAnswerId: quizResult.quizDetails.questions[index].answers.where((element) => element.isCorrect).first.id,
                  );
                },
                separatorBuilder: (context, index) {
                  return const LargeVSpacer();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuestionResultBox extends StatelessWidget {
  const QuestionResultBox({
    super.key,
    required this.questionModel,
    required this.correctAnswerId,
    required this.userAnswerId,
  });

  final TakeQuizResultQuestionModel questionModel;
  final String correctAnswerId;
  final String userAnswerId;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColorScheme.questionBoxContainerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: DottedBorderContainer(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                questionModel.title,
                style: context.textTheme.labelMedium,
              ),
              const MediumVSpacer(),
              ListView.separated(
                itemCount: questionModel.answers.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final answer = questionModel.answers[index];
                  final answerResult = AnswerResult.getAnswerState(answer.id, correctAnswerId, userAnswerId);

                  return AnswerTile(
                    leading: AnswerIndicators.values[index].name,
                    text: questionModel.answers[index].content,
                    result: answerResult,
                    iconPath: answerResult.iconPath,
                  );
                },
                separatorBuilder: (context, index) {
                  return const SmallVSpacer();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
