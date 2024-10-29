import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../models/question_model_interface.dart';
import '../spacers/vertical_spacers.dart';
import '../basic_button.dart';
import '../dialogs/basic_dialog.dart';
import '../secondary_button.dart';
import '../text_area.dart';
import '../../../res/media_res.dart';
import 'add_new_question_dialog.dart';
import '../../../../generated/l10n.dart';

class GenerateNewQuestionDialog extends StatefulWidget {
  const GenerateNewQuestionDialog({super.key, required this.onQuestionAdd});

  final void Function(QuestionModelInterface question) onQuestionAdd;

  static void show(BuildContext context, {required void Function(QuestionModelInterface question) onQuestionAdd}) {
    showDialog(
      context: context,
      builder: (context) => GenerateNewQuestionDialog(
        onQuestionAdd: onQuestionAdd,
      ),
    );
  }

  @override
  State<GenerateNewQuestionDialog> createState() => _GenerateNewQuestionDialogState();
}

class _GenerateNewQuestionDialogState extends State<GenerateNewQuestionDialog> {
  final TextEditingController promptController = TextEditingController();

  @override
  void dispose() {
    promptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasicDialog(
      title: S.of(context).quizzCreationGenerateQuestionHeading,
      content: _dialogContent(),
      actions: [
        SecondaryButton(
          onPressed: () {
            Navigator.pop(context);
          },
          text: S.of(context).cancelButton,
          bgColor: Colors.transparent,
          width: null,
        ),
        BasicButton(
          onPressed: () {
            Navigator.pop(context);
            AddNewQuestionDialog.show(context, onQuestionAdd: widget.onQuestionAdd);
          },
          text: S.of(context).quizzCreationGenerateQuestionGenerateButton,
          icon: SvgPicture.asset(
            MediaRes.generate,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }

  Widget _dialogContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LargeVSpacer(),
        TextArea(
          labelText: S.of(context).quizzCreationGenerateQuestionPromptLabel,
          hintText: S.of(context).quizzCreationGenerateQuestionPromptHint,
          controller: promptController,
          maxLines: 10,
        ),
      ],
    );
  }
}
