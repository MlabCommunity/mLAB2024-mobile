import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/dialogs/delete_dialog.dart';
import '../../../../core/common/widgets/errors/error_snackbar.dart';
import '../../../../core/common/widgets/info_snackbar.dart';
import '../../../../core/common/widgets/new_question/add_question_dialog_answer_section.dart';
import '../../../../core/common/widgets/spacers/horizontal_spacers.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';
import '../../application/quiz_details_controller.dart';
import '../../domain/question_details_model.dart';

class DeleteQuestionDialog extends ConsumerWidget {
  const DeleteQuestionDialog({super.key, required this.question});

  final QuestionDetailsModel question;

  static void show(BuildContext context, QuestionDetailsModel question) {
    showDialog(
      context: context,
      builder: (context) => Center(
          child: Wrap(children: [DeleteQuestionDialog(question: question)])),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DeleteDialog(
      title: S.of(context).deleteQuestionDialogHeading,
      content: Column(
        children: [
          Text(
            S.of(context).deleteQuestionDialogDescription,
            style: context.theme.textTheme.bodyMedium
                ?.copyWith(color: AppColorScheme.textSecondary),
          ),
          const LargeVSpacer(),
          _questionItem(context),
        ],
      ),
      onConfirm: () async {
        final success = await ref
            .read(quizDetailsControllerProvider.notifier)
            .deleteQuestion(question.id);
        if (context.mounted) {
          if (!success) {
            ErrorSnackbar.show(context, S.of(context).deleteQuestionFailure);
          } else {
            InfoSnackbar.show(
              context,
              S.of(context).quizzDetailsDeleteQuestionSuccess,
              color: AppColorScheme.success,
            );
          }
          Navigator.of(context).pop();
        }
      },
    );
  }

  Widget _questionItem(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppTheme.mediumRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(
            AppTheme.deleteQuestionDetailsQuestionBoxPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.title,
              style: context.theme.textTheme.headlineSmall
                  ?.copyWith(color: AppColorScheme.textPrimary),
            ),
            const MediumVSpacer(),
            _answers(context),
          ],
        ),
      ),
    );
  }

  Widget _answers(BuildContext context) {
    return Column(
      children: [
        for (final (index, answer) in question.answers.indexed)
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Answer.values[index].name,
                style: context.theme.textTheme.labelMedium,
              ),
              const MediumHSpacer(),
              Text(
                answer.content,
                style: context.theme.textTheme.bodyMedium
                    ?.copyWith(color: AppColorScheme.textSecondary),
              ),
            ],
          ),
        const ExtraSmallVSpacer(),
      ],
    );
  }
}
