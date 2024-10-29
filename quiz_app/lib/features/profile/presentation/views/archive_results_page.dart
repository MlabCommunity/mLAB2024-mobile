import 'package:auto_route/auto_route.dart';
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
import '../../domain/archive_models/quizz_archive_model.dart';
import '../../domain/archive_models/quizz_archive_question_model.dart';

@RoutePage()
class ArchiveResultsPage extends StatelessWidget {
  const ArchiveResultsPage({super.key, required this.archivedQuizz});

  final QuizzArchiveModel archivedQuizz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).archiveResultsAppBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: archivedQuizz.questions.length,
                itemBuilder: (context, index) {
                  return QuestionResultBox(
                    questionModel: archivedQuizz.questions[index],
                    userAnswerId: archivedQuizz.userAnswers
                        .where((element) => element.questionId == archivedQuizz.questions[index].id)
                        .first
                        .answerId,
                    correctAnswerId: archivedQuizz.questions[index].answers.where((element) => element.isCorrect).first.id,
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

  final QuizzArchiveQuestionModel questionModel;
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
