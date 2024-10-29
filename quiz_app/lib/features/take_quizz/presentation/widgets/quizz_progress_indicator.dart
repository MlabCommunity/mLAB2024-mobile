import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';

class QuizzProgressIndicator extends StatelessWidget {
  const QuizzProgressIndicator({super.key, required this.numberOfSteps, required this.currentStep});

  final int numberOfSteps;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    final availableWidth = context.width - AppTheme.pageDefaultSpacingSize * 2;
    return Stack(
      children: [
        Container(
          height: 8,
          width: availableWidth,
          decoration: BoxDecoration(
            color: AppColorScheme.secondary,
            borderRadius: BorderRadius.circular(AppTheme.radiusFull),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate,
          height: 8,
          decoration: BoxDecoration(
            color: AppColorScheme.primary,
            borderRadius: BorderRadius.circular(AppTheme.radiusFull),
          ),
          width: availableWidth * (currentStep - 1) / (numberOfSteps - 1),
        ),
      ],
    );
  }
}

class QuestionEntity {
  final String question;
  final String questionId;
  final List<String> answers;

  QuestionEntity({required this.questionId, required this.question, required this.answers});
}
