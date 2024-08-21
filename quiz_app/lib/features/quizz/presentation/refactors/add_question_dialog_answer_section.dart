import 'package:flutter/material.dart';
import 'package:quiz_app/core/common/widgets/spacers/vertical_spacers.dart';
import 'package:quiz_app/core/common/widgets/text_area.dart';
import 'package:quiz_app/core/extensions/context_extension.dart';
import 'package:quiz_app/core/res/string_res.dart';
import 'package:quiz_app/core/theme/app_color_scheme.dart';
import 'package:quiz_app/core/theme/app_theme.dart';
import 'package:quiz_app/generated/l10n.dart';

class AddQuestionDialogAnswerSection extends StatelessWidget {
  const AddQuestionDialogAnswerSection({
    super.key,
    required this.answer1Controller,
    required this.answer2Controller,
    required this.answer3Controller,
    required this.answer4Controller,
  });

  final TextEditingController answer1Controller;
  final TextEditingController answer2Controller;
  final TextEditingController answer3Controller;
  final TextEditingController answer4Controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).quizzCreationAddQuestionAnswersLabel,
          style: context.textTheme.bodyMedium,
        ),
        const SmallVSpacer(),
        AnswerTextArea(answerController: answer1Controller),
        const SmallVSpacer(),
        AnswerTextArea(answerController: answer2Controller),
        const SmallVSpacer(),
        AnswerTextArea(answerController: answer3Controller),
        const SmallVSpacer(),
        AnswerTextArea(answerController: answer4Controller),
      ],
    );
  }
}

class AnswerTextArea extends StatelessWidget {
  const AnswerTextArea({
    super.key,
    required this.answerController,
  });

  final TextEditingController answerController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //TODO: Swap this with a custom checkbox widget
        Material(
          color: Colors.transparent,
          child: Checkbox(
            value: false,
            onChanged: (value) {},
          ),
        ),
        Expanded(
          child: TextArea(
            hintText: S.of(context).quizzCreationAddQuestionAnswerPlaceholder,
            controller: answerController,
            minLines: 2,
            maxLines: 2,
            contentPadding: AppTheme.pageDefaultSpacingSize,
            textStyle: context.textTheme.bodySmall!.copyWith(
              color: AppColorScheme.textSecondary,
              height: 20 / 14,
            ),
          ),
        ),
      ],
    );
  }
}
