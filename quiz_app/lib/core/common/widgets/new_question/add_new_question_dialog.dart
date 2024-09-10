import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../features/quiz_generation/domain/answer_model.dart';
import '../../../../features/quiz_generation/domain/generate_question_model.dart';
import '../../../models/new_question_model.dart';
import '../../../services/app_router.dart';
import '../info_snackbar.dart';
import 'add_question_dialog_answer_section.dart';
import '../basic_button.dart';
import '../dialogs/basic_dialog.dart';
import '../form_field.dart';
import '../secondary_button.dart';
import '../spacers/vertical_spacers.dart';
import '../../../theme/app_color_scheme.dart';
import '../../../../generated/l10n.dart';

class AddNewQuestionDialog extends ConsumerStatefulWidget {
  const AddNewQuestionDialog({super.key, required this.onQuestionAdd});

  final void Function(GenerateQuestionModel question) onQuestionAdd;

  @override
  ConsumerState createState() => _AddNewQuestionDialogState();

  static void show(BuildContext context, {required void Function(GenerateQuestionModel question) onQuestionAdd}) {
    showDialog(
      context: context,
      builder: (context) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.center,
          child: Wrap(
            children: [
              AddNewQuestionDialog(onQuestionAdd: onQuestionAdd),
            ],
          ),
        ),
      ),
    );
  }
}

class _AddNewQuestionDialogState extends ConsumerState<AddNewQuestionDialog> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final Map<Answer, AnswerWithValidation> answerControllers = () {
    final Map<Answer, AnswerWithValidation> result = {};
    for (var element in Answer.values) {
      result[element] = AnswerWithValidation(
        TextEditingController(),
        false,
      );
    }
    result[Answer.A]!.isCorrect = true;

    return result;
  }();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    answerControllers.forEach((key, value) => value.controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasicDialog(
      title: S.of(context).quizzCreationAddQuestionHeading,
      content: _dialogContent(),
      actions: [
        SecondaryButton(
          onPressed: () {
            ref.read(appRouterProvider).maybePop();
          },
          text: S.of(context).cancelButton,
          contentColor: AppColorScheme.primary,
          bgColor: Colors.transparent,
          width: null,
        ),
        BasicButton(
          onPressed: () {
            if (validateQuestion()) {
              final answers = answerControllers.values.toList().where((element) => element.controller.text.trim().isNotEmpty);
              final question = GenerateQuestionModel(
                title: titleController.text,
                generateAnswers: List.generate(
                  answers.length,
                  (index) => AnswerModel(
                    content: answers.elementAt(index).controller.text,
                    isCorrect: answers.elementAt(index).isCorrect,
                  ),
                ),
              );
              widget.onQuestionAdd(question);
              ref.read(appRouterProvider).maybePop();
            } else {
              InfoSnackbar.show(
                context,
                S.of(context).quizzCreationAddQuestionError,
                color: AppColorScheme.error,
              );
            }
          },
          text: S.of(context).quizzCreationSaveQuestion,
        ),
      ],
    );
  }

  bool validateQuestion() {
    if (titleController.text.trim().isEmpty) {
      return false;
    }

    final notEmptyAnswers = answerControllers.entries.toList().where((element) => element.value.controller.text.trim().isNotEmpty);
    if (notEmptyAnswers.length < 2) {
      return false;
    }

    final correctAnswers = answerControllers.entries.toList().where(
          (element) => element.value.isCorrect && element.value.controller.text.trim().isNotEmpty,
        );
    if (correctAnswers.isEmpty) {
      return false;
    }

    return true;
  }

  Widget _dialogContent() {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LargeVSpacer(),
          IFormField(
            labelText: S.of(context).quizzCreationAddQuestionTitleLabel,
            hintText: S.of(context).quizzCreationAddQuestionTitleHint,
            isRequired: true,
            obscureText: false,
            controller: titleController,
          ),
          const LargeVSpacer(),
          AddQuestionDialogAnswerSection(
            answerControllers: answerControllers,
          ),
        ],
      ),
    );
  }
}

class AnswerWithValidation {
  final TextEditingController controller;
  bool isCorrect;

  AnswerWithValidation(this.controller, this.isCorrect);
}
