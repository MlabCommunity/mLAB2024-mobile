import 'package:flutter/material.dart';
import 'package:quiz_app/core/common/widgets/basic_button.dart';
import 'package:quiz_app/core/extensions/add_padding_extension.dart';
import 'package:quiz_app/core/extensions/context_extension.dart';
import 'package:quiz_app/core/res/string_res.dart';
import 'package:quiz_app/core/theme/app_color_scheme.dart';
import 'package:quiz_app/features/quizz/presentation/widgets/switch_button.dart';
import 'package:quiz_app/features/quizz/presentation/widgets/text_checkbox.dart';

class QuizDetailsSettingsTab extends StatefulWidget {
  const QuizDetailsSettingsTab({super.key});

  @override
  State<QuizDetailsSettingsTab> createState() => _QuizDetailsSettingsTabState();
}

class _QuizDetailsSettingsTabState extends State<QuizDetailsSettingsTab> {
  bool quizStatusValue = false;
  bool quizAvailabilityActiveValue = false;
  bool quizAvailabilityPublicValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          StringRes.quizzDetailsTabSettingsSubheading,
          style: context.textTheme.bodyMedium!
              .copyWith(color: AppColorScheme.textSecondary),
        ).addPadding(padding: const EdgeInsets.symmetric(vertical: 16)),
        Text(
          StringRes.quizzDetailsTabSettingsQuizStatus,
          style: context.textTheme.labelLarge,
        ).addPadding(padding: const EdgeInsets.only(bottom: 8)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                StringRes.quizzDetailsTabSettingsQuizStatusDescription,
                style: context.textTheme.bodyMedium,
              ),
            ),
            SwitchButton(
              value: quizStatusValue,
              onChanged: (value) {
                setState(() {
                  quizStatusValue = value;
                });
              },
            ),
          ],
        ).addPadding(padding: const EdgeInsets.only(bottom: 24)),
        Text(
          StringRes.quizzDetailsTabSettingsQuizAvailability,
          style: context.textTheme.labelLarge,
        ).addPadding(padding: const EdgeInsets.only(bottom: 8)),
        Text(
          StringRes.quizzDetailsTabSettingsQuizAvailabilityDescription,
          style: context.textTheme.bodyMedium,
        ).addPadding(padding: const EdgeInsets.only(bottom: 16)),
        TextCheckbox(
          text: StringRes.quizzDetailsTabSettingsQuizAvailabilityActive,
          value: quizAvailabilityActiveValue,
          onChanged: (value) {
            setState(() {
              quizAvailabilityActiveValue = value!;
            });
          },
        ).addPadding(padding: const EdgeInsets.only(bottom: 8)),
        TextCheckbox(
          text: StringRes.quizzDetailsTabSettingsQuizAvailabilityPublic,
          value: quizAvailabilityPublicValue,
          onChanged: (value) {
            setState(() {
              quizAvailabilityPublicValue = value!;
            });
          },
        ),
        Align(
          alignment: Alignment.centerRight,
          child: BasicButton(
            text: StringRes.quizzDetailsTabSettingsSaveChanges,
            onPressed: () {},
            width: context.width * 0.4,
          ).addPadding(padding: const EdgeInsets.only(top: 40)),
        )
      ],
    );
  }
}