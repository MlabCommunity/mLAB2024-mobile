import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../generated/l10n.dart';
import '../../../../core/common/widgets/dialogs/delete_dialog.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../application/dashboard_controller.dart';
import '../../domain/quiz_dashboard_model.dart';
import 'quiz_delete_dialog_item.dart';

class DeleteQuizDialog extends StatelessWidget {
  const DeleteQuizDialog({super.key, required this.quiz});

  final QuizDashboardModel quiz;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return DeleteDialog(
        title: S.of(context).deleteQuizzHeading,
        content: DeleteQuizDialogContent(
          quiz: quiz,
        ),
        onConfirm: () {
          ref.read(dashboardControllerProvider.notifier).deleteQuiz(quiz.id);
          Navigator.of(context).pop();
        },
      );
    });
  }

  static void show(BuildContext context, QuizDashboardModel quiz) {
    showDialog(
      context: context,
      builder: (context) => DeleteQuizDialog(quiz: quiz),
    );
  }
}

class DeleteQuizDialogContent extends StatelessWidget {
  const DeleteQuizDialogContent({super.key, required this.quiz});

  final QuizDashboardModel quiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SmallVSpacer(),
        Text(
          S.of(context).deleteQuizzDescription,
          style: context.theme.textTheme.bodyMedium,
        ),
        const LargeVSpacer(),
        QuizDeleteDialogItem(quizModel: quiz),
      ],
    );
  }
}
