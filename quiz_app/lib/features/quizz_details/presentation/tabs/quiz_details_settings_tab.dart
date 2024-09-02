import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../application/quiz_details_controller.dart';
import '../../domain/quiz_details_model.dart';
import '../widgets/switch_button.dart';
import '../widgets/text_checkbox.dart';
import '../../../../generated/l10n.dart';

class QuizDetailsSettingsTab extends ConsumerStatefulWidget {
  const QuizDetailsSettingsTab({super.key});

  @override
  ConsumerState<QuizDetailsSettingsTab> createState() =>
      _QuizDetailsSettingsTabState();
}

class _QuizDetailsSettingsTabState
    extends ConsumerState<QuizDetailsSettingsTab> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(quizDetailsControllerProvider);
    final controller = ref.read(quizDetailsControllerProvider.notifier);

    return state.maybeWhen(
      loaded: (quizDetails) {
        QuizStatus quizStatus = controller.tempStatus;
        QuizAvailability quizAvailability = controller.tempAvailability;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SmallVSpacer(),
            Text(
              S.of(context).quizzDetailsTabSettingsSubheading,
              style: context.textTheme.bodyMedium!
                  .copyWith(color: AppColorScheme.textSecondary),
            ),
            const SmallVSpacer(),
            Text(
              S.of(context).quizzDetailsTabSettingsQuizStatus,
              style: context.textTheme.labelLarge,
            ),
            const SmallVSpacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    S.of(context).quizzDetailsTabSettingsQuizStatusDescription,
                    style: context.textTheme.bodyMedium,
                  ),
                ),
                SwitchButton(
                  value: quizStatus == QuizStatus.Active,
                  onChanged: (value) {
                    setState(() {
                      controller.tempStatus =
                          value ? QuizStatus.Active : QuizStatus.Inactive;
                    });
                  },
                ),
              ],
            ),
            const LargeVSpacer(),
            Text(
              S.of(context).quizzDetailsTabSettingsQuizAvailability,
              style: context.textTheme.labelLarge,
            ),
            const SmallVSpacer(),
            Text(
              S.of(context).quizzDetailsTabSettingsQuizAvailabilityDescription,
              style: context.textTheme.bodyMedium,
            ),
            const MediumVSpacer(),
            TextCheckbox(
              //TODO: replace with translation
              text: "Private",
              value: quizAvailability == QuizAvailability.Private,
              onChanged: (value) {
                setState(() {
                  controller.tempAvailability = value!
                      ? QuizAvailability.Private
                      : QuizAvailability.Public;
                });
              },
            ),
            const SmallVSpacer(),
            TextCheckbox(
              text: S.of(context).quizzDetailsTabSettingsQuizAvailabilityPublic,
              value: quizAvailability == QuizAvailability.Public,
              onChanged: (value) {
                setState(() {
                  controller.tempAvailability = quizAvailability = value!
                      ? QuizAvailability.Public
                      : QuizAvailability.Private;
                });
              },
            ),
            const ExtraLargeVSpacer(),
            Consumer(builder: (context, ref, child) {
              final state = ref.watch(quizDetailsControllerProvider);
              return state.maybeWhen(
                loaded: (quizDetails) {
                  print(quizDetails.status);
                  return Align(
                    alignment: Alignment.centerRight,
                    child: BasicButton(
                      text: S.of(context).quizzDetailsTabSettingsSaveChanges,
                      onPressed: () {
                        final controller =
                            ref.read(quizDetailsControllerProvider.notifier);
                        controller.updateQuizStatus(quizDetails.id);
                        controller.updateQuizAvailability(
                            quizDetails.id);
                      },
                    ),
                  );
                },
                orElse: () => const SizedBox(),
              );
            })
          ],
        );
      },
      orElse: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
