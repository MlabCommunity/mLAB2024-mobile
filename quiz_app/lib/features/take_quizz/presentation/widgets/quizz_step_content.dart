import 'package:flutter/material.dart';

import '../../../../core/common/widgets/spacers/horizontal_spacers.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/utils/enums/answer_indicator_enum.dart';
import '../../domain/take_quiz_question_model.dart';
import 'quizz_answer_card.dart';

class QuizzStepContent extends StatelessWidget {
  const QuizzStepContent({super.key, required this.question});

  final TakeQuizQuestionModel question;

  @override
  Widget build(BuildContext context) {
    final isTrueFalseType = question.answers.length == 2;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          question.title,
          style: context.textTheme.headlineMedium,
        ),
        const ExtraLargeVSpacer(),
        AspectRatio(
          aspectRatio: 1.0,
          child: isTrueFalseType
              ? Row(
                  children: [
                    Expanded(
                      child: QuizzAnswerCard(
                        answer: question.answers[0],
                        questionId: question.id,
                        indicator: AnswerIndicators.A,
                        isTrueFalseType: true,
                      ),
                    ),
                    const SmallHSpacer(),
                    Expanded(
                      child: QuizzAnswerCard(
                        answer: question.answers[1],
                        questionId: question.id,
                        indicator: AnswerIndicators.B,
                        isTrueFalseType: true,
                      ),
                    ),
                  ],
                )
              : GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  children: List.generate(
                    question.answers.length,
                    (index) {
                      return QuizzAnswerCard(
                        answer: question.answers[index],
                        questionId: question.id,
                        indicator: AnswerIndicators.values[index],
                      );
                    },
                  ),
                ),
        )
      ],
    );
  }
}
