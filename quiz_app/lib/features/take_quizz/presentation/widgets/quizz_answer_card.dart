import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/enums/answer_indicator_enum.dart';
import '../../application/quizz_take_controller.dart';
import '../../domain/take_quiz_answer_model.dart';

class QuizzAnswerCard extends ConsumerWidget {
  const QuizzAnswerCard({required this.indicator, required this.questionId, super.key, required this.answer, this.isTrueFalseType = false});

  final TakeQuizAnswerModel answer;
  final String questionId;
  final AnswerIndicators indicator;
  final bool? isTrueFalseType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizzController = ref.read(quizzTakeControllerProvider.notifier);
    final quizzState = ref.watch(quizzTakeControllerProvider);
    final selectedAnswer = quizzState.maybeWhen(
      loaded: (quiz, userAnswers, currentStep) {
        final userAnswer = userAnswers.where((element) => element.questionId == questionId).firstOrNull;
        return userAnswer?.answerId;
      },
      orElse: () => null,
    );
    final isSelected = answer.id == selectedAnswer;
    return InkWell(
      onTap: () {
        quizzController.answerQuestion(questionId: questionId, answerId: answer.id);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        height: context.height / 2,
        decoration: BoxDecoration(
          color: isSelected ? AppColorScheme.primary : Colors.white,
          borderRadius: BorderRadius.circular(AppTheme.radiusMedium),
        ),
        padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
        child: Row(
          crossAxisAlignment: isTrueFalseType == true ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                indicator.toString().split('.').last,
                style: context.textTheme.labelMedium?.copyWith(
                  color: isSelected ? Colors.white : null,
                ),
              ),
            ),
            const ExtraLargeVSpacer(),
            Expanded(
              flex: 8,
              child: Text(
                answer.content,
                style: isSelected
                    ? context.textTheme.labelMedium?.copyWith(
                        color: Colors.white,
                      )
                    : context.textTheme.bodyMedium?.copyWith(
                        color: AppColorScheme.textSecondary,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
