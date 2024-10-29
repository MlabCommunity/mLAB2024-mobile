import 'package:flutter/material.dart';

import '../../../../../core/common/widgets/checkbox.dart';
import '../../../../../core/common/widgets/spacers/horizontal_spacers.dart';
import '../../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../../core/common/widgets/text_area.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../../../../../core/theme/app_color_scheme.dart';
import '../../../../../core/theme/app_theme.dart';
import '../../../../../generated/l10n.dart';
import 'add_new_question_dialog.dart';

enum Answer {
  A,
  B,
  C,
  D,
}

class AddQuestionDialogAnswerSection extends StatefulWidget {
  const AddQuestionDialogAnswerSection({super.key, required this.answerControllers});

  final Map<Answer, AnswerWithValidation> answerControllers;

  @override
  State<AddQuestionDialogAnswerSection> createState() => _AddQuestionDialogAnswerSectionState();
}

class _AddQuestionDialogAnswerSectionState extends State<AddQuestionDialogAnswerSection> {
  Answer? _selectedAnswer;

  void _onAnswerSelected(MapEntry<Answer, AnswerWithValidation> answer) {
    setState(() {
      _selectedAnswer = answer.key;
      answer.value.isCorrect = true;
      uncheckOtherAnswers(answer.key);
    });
  }

  void uncheckOtherAnswers(Answer selectedAnswer) {
    widget.answerControllers.forEach((key, value) {
      if (key != selectedAnswer) {
        value.isCorrect = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _selectedAnswer ??= widget.answerControllers.entries.firstWhere((element) => element.value.isCorrect).key;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).quizzCreationAddQuestionAnswersLabel,
          style: context.textTheme.bodyMedium,
        ),
        for (final entry in widget.answerControllers.entries) _buildAnswerTextArea(entry),
      ],
    );
  }

  _buildAnswerTextArea(MapEntry<Answer, AnswerWithValidation> entry) {
    return Column(
      children: [
        const SmallVSpacer(),
        AnswerTextArea(
          answerController: entry.value.controller,
          isChecked: _selectedAnswer == entry.key,
          onChanged: (value) => _onAnswerSelected(entry),
        ),
      ],
    );
  }
}

class AnswerTextArea extends StatelessWidget {
  const AnswerTextArea({
    super.key,
    required this.answerController,
    required this.isChecked,
    required this.onChanged,
  });

  final TextEditingController answerController;
  final bool isChecked;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ICheckbox(value: isChecked, onChanged: onChanged),
        const CustomHSpacer(AppTheme.addQuestionDialogAnswerHorizontalSpacer),
        Expanded(
          child: SizedBox(
            width: context.width,
            child: TextArea(
              required: false,
              hintText: S.of(context).quizzCreationAddQuestionAnswerPlaceholder,
              controller: answerController,
              maxLines: AppTheme.addAnswerDialogMaxAnswerLines,
              contentPadding: AppTheme.pageDefaultSpacingSize,
              textStyle: context.textTheme.bodySmall!.copyWith(
                color: AppColorScheme.textSecondary,
                height: AppTheme.addQuestionDialogTextAreaHeight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
