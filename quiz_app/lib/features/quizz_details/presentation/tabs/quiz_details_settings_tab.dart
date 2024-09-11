import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/info_snackbar.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../application/quiz_details_controller.dart';
import '../../domain/quiz_details_model.dart';
import '../widgets/switch_button.dart';
import '../widgets/text_checkbox.dart';
import '../../../../generated/l10n.dart';

class QuizDetailsSettingsTab extends ConsumerWidget {
  const QuizDetailsSettingsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizDetailsControllerProvider);
    final controller = ref.read(quizDetailsControllerProvider.notifier);

    return state.maybeWhen(
      loaded: (quizDetails, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...heading(context),
            ...statusSection(context, quizDetails, controller),
            ...availabilitySection(context, quizDetails, controller),
            saveButton(
              quizDetails,
              () async {
                final success = await controller.updateQuizProperties(
                  quizDetails.id,
                  quizDetails.status,
                  quizDetails.availability,
                );
                if (context.mounted) {
                  if (success) {
                    InfoSnackbar.show(
                      context,
                      //TODO: replace with translation
                      'Succesfully updated quiz settings',
                      color: AppColorScheme.success,
                    );
                  } else {
                    InfoSnackbar.show(
                      context,
                      S.current.somethingWentWrong,
                      color: AppColorScheme.error,
                    );
                  }
                }
              },
              context,
            ),
          ],
        );
      },
      orElse: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  List<Widget> heading(BuildContext context) {
    return [
      const SmallVSpacer(),
      Text(
        S.of(context).quizzDetailsTabSettingsSubheading,
        style: context.textTheme.bodyMedium!
            .copyWith(color: AppColorScheme.textSecondary),
      ),
      const SmallVSpacer(),
    ];
  }

  List<Widget> statusSection(
    BuildContext context,
    QuizDetailsModel quizDetails,
    QuizDetailsController controller,
  ) {
    return [
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
            value: quizDetails.status == QuizStatus.Active,
            onChanged: (value) {
              controller.changeQuizStatus(
                value ? QuizStatus.Active : QuizStatus.Inactive,
              );
            },
          ),
        ],
      ),
      const LargeVSpacer(),
    ];
  }

  List<Widget> availabilitySection(
    BuildContext context,
    QuizDetailsModel quizDetails,
    QuizDetailsController controller,
  ) {
    return [
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
        text: S.of(context).quizzDetailsTabSettingsQuizAvailabilityPrivate,
        value: quizDetails.availability == QuizAvailability.Private,
        onChanged: (value) {
          controller.changeQuizAvailability(
            value! ? QuizAvailability.Private : QuizAvailability.Public,
          );
        },
      ),
      const SmallVSpacer(),
      TextCheckbox(
        text: S.of(context).quizzDetailsTabSettingsQuizAvailabilityPublic,
        value: quizDetails.availability == QuizAvailability.Public,
        onChanged: (value) {
          controller.changeQuizAvailability(
            value! ? QuizAvailability.Public : QuizAvailability.Private,
          );
        },
      ),
      const ExtraLargeVSpacer(),
    ];
  }

  Widget saveButton(QuizDetailsModel quizDetailsModel, VoidCallback onPressed,
      BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: BasicButton(
        text: S.of(context).quizzDetailsTabSettingsSaveChanges,
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
