import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/core/common/widgets/question_box.dart';
import 'package:quiz_app/core/extensions/add_padding_extension.dart';
import 'package:quiz_app/core/extensions/context_extension.dart';
import 'package:quiz_app/core/res/string_res.dart';
import 'package:quiz_app/core/theme/app_color_scheme.dart';
import 'package:quiz_app/features/quizz/presentation/widgets/add_new_question_bottom_sheet.dart';
import 'package:quiz_app/features/quizz/presentation/widgets/switch_button.dart';

class QuizDetailsQuestionsTab extends StatefulWidget {
  const QuizDetailsQuestionsTab({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizDetailsQuestionsTabState();
  }
}

class _QuizDetailsQuestionsTabState extends State<QuizDetailsQuestionsTab> {
  bool answersVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
              questionsHeader(context),
              questionsList(context),
      ],
    );
  }

  Widget questionsHeader(BuildContext context) {
    return Column(
      children: [
        Text(
          StringRes.quizzDetailsTabQuestionsSubheading,
          style: context.textTheme.bodyMedium!
              .copyWith(color: AppColorScheme.textSecondary),
        ).addPadding(padding: const EdgeInsets.symmetric(vertical: 16)),
        answersSwitchRow(context),
        newQuestionButton(context),
      ],
    );
  }

  Widget questionsList(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          padding: const EdgeInsets.only(top: 16),
          itemCount: 10,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return QuestionBox(questionNumber: index + 1)
                .addPadding(padding: const EdgeInsets.only(bottom: 32));
          },
        ),
      ],
    );
  }

  Widget answersSwitchRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Total questions: 10", //TODO: replace with status badge from the dashboard quiz card
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(StringRes.quizzDetailsTabQuestionsSwitch,
                    style: context.textTheme.bodyMedium)
                .addPadding(
              padding: const EdgeInsets.only(right: 4),
            ),
            SizedBox(
              height: 32,
              child: FittedBox(
                fit: BoxFit.fill,
                child: SwitchButton(
                  value: answersVisible,
                  onChanged: (value) {
                    setState(() {
                      answersVisible = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget newQuestionButton(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {
          AddNewQuestionBottomSheet.show(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
          shadowColor: Colors.transparent,
          elevation: 0,
        ),
        child: Text(
          StringRes.quizzDetailsTabQuestionsAddNewQuestion,
          style: context.textTheme.bodyMedium!.copyWith(
            color: AppColorScheme.primary,
            fontWeight: FontWeight.w700,
            fontFamily: GoogleFonts.inter().fontFamily,
          ),
        ),
      ),
    ).addPadding(padding: const EdgeInsets.only(top: 12));
  }
}