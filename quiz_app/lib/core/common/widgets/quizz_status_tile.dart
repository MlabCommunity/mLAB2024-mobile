import 'package:flutter/material.dart';

import '../../../features/dashboard/domain/quiz_dashboard_model.dart';
import '../../../features/quizz_details/domain/quiz_details_model.dart';
import '../../../generated/l10n.dart';
import '../../theme/app_color_scheme.dart';
import 'quiz_status_badge.dart';
import 'spacers/horizontal_spacers.dart';

class QuizzStatusTile extends StatelessWidget {
  const QuizzStatusTile({super.key, required this.quizz});

  final QuizDashboardModel quizz;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QuizStatusBadge(
          text: S.of(context).quizQuestionNumberBadge(quizz.totalQuestions),
          backgroundColor: AppColorScheme.secondary,
          textColor: AppColorScheme.primary,
        ),
        const MediumHSpacer(),
        QuizStatusBadge(
          text: quizz.status.name,
          backgroundColor: quizz.status == QuizStatus.active ? AppColorScheme.successLight : AppColorScheme.warningLight,
          textColor: quizz.status == QuizStatus.active ? AppColorScheme.success : AppColorScheme.warning,
        ),
      ],
    );
  }
}
