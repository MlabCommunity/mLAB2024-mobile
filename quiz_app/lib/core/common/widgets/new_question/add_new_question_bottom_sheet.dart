import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../features/quiz_generation/domain/question_model.dart';
import '../spacers/vertical_spacers.dart';
import '../../../extensions/add_padding_extension.dart';
import '../../../extensions/context_extension.dart';
import '../../../res/media_res.dart';
import '../../../theme/app_theme.dart';
import 'add_new_question_dialog.dart';
import 'bottom_sheet_tile.dart';
import 'generate_new_question_dialog.dart';
import '../../../../generated/l10n.dart';

class AddNewQuestionBottomSheet extends StatelessWidget {
  const AddNewQuestionBottomSheet({super.key, required this.onQuestionAdd});

  final void Function(QuestionModel question) onQuestionAdd;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SmallVSpacer(),
        Text(
          S.of(context).addNewQuestionBottomSheetHeading,
          style: context.theme.textTheme.headlineMedium,
        ),
        BottomSheetTile(
          text: S.of(context).addNewQuestionBottomSheetManual,
          icon: SvgPicture.asset(MediaRes.addQuestionManual),
          onTap: () {
            Navigator.pop(context);
            AddNewQuestionDialog.show(context, onQuestionAdd: onQuestionAdd);
          },
        ),
        BottomSheetTile(
          text: S.of(context).addNewQuestionBottomSheetAI,
          icon: SvgPicture.asset(MediaRes.addQuestionAI),
          onTap: () {
            Navigator.pop(context);
            GenerateNewQuestionDialog.show(context, onQuestionAdd: onQuestionAdd);
          },
        )
      ],
    ).addPadding(padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize));
  }

  //TODO: add return type to get question add mode (manual, AI generated)
  static void show(BuildContext context, {required void Function(QuestionModel question) onQuestionAdd}) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Wrap(
        children: [
          AddNewQuestionBottomSheet(onQuestionAdd: onQuestionAdd),
        ],
      ),
    );
  }
}
