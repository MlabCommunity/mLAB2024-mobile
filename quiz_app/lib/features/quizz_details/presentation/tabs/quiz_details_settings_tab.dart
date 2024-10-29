import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/errors/error_snackbar.dart';
import '../../../../core/common/widgets/info_snackbar.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../application/quiz_details_controller.dart';
import '../../domain/quiz_details_model.dart';
import '../widgets/switch_button.dart';
import '../widgets/text_checkbox.dart';
import '../../../../generated/l10n.dart';

class QuizDetailsSettingsTab extends ConsumerWidget {
  const QuizDetailsSettingsTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).quizzDetailsTabSettingsSubheading,
            style: context.textTheme.bodyMedium!.copyWith(color: AppColorScheme.textSecondary),
          ),
          const SmallVSpacer(),
          const QuizSettingsStatusSection(),
          const QuizSettingsAvailabilitySection(),
          const MediumVSpacer(),
          const SettingsSaveButton(),
        ],
      ),
    );
  }
}

class SettingsSaveButton extends ConsumerWidget {
  const SettingsSaveButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizDetailsControllerProvider);
    final controller = ref.read(quizDetailsControllerProvider.notifier);

    return state.maybeWhen(
      loaded: (quizDetails, _, __) {
        return Align(
          alignment: Alignment.centerRight,
          child: BasicButton(
            text: S.of(context).quizzDetailsTabSettingsSaveChanges,
            onPressed: () async {
              final success = await controller.updateQuizProperties(
                quizDetails.id,
                quizDetails.status,
                quizDetails.availability,
              );
              if (context.mounted) {
                if (success) {
                  InfoSnackbar.show(
                    context,
                    S.of(context).quizzDetailsTabSettingsSuccessfullSave,
                    color: AppColorScheme.success,
                  );
                } else {
                  ErrorSnackbar.show(
                    context,
                    S.current.somethingWentWrong,
                  );
                }
              }
            },
          ),
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}

class QuizSettingsStatusSection extends ConsumerWidget {
  const QuizSettingsStatusSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizDetailsControllerProvider);
    final controller = ref.read(quizDetailsControllerProvider.notifier);

    return state.maybeWhen(
      loaded: (quizDetails, _, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                  value: quizDetails.status == QuizStatus.active,
                  onChanged: (value) {
                    controller.changeQuizStatus(
                      value ? QuizStatus.active : QuizStatus.inactive,
                    );
                  },
                ),
              ],
            ),
            const LargeVSpacer(),
          ],
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}

class QuizSettingsAvailabilitySection extends ConsumerWidget {
  const QuizSettingsAvailabilitySection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizDetailsControllerProvider);
    final controller = ref.read(quizDetailsControllerProvider.notifier);

    return state.maybeWhen(
      loaded: (quizDetails, _, __) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            value: quizDetails.availability == QuizAvailability.private,
            onChanged: (value) {
              controller.changeQuizAvailability(
                value! ? QuizAvailability.private : QuizAvailability.public,
              );
            },
          ),
          const SmallVSpacer(),
          TextCheckbox(
            text: S.of(context).quizzDetailsTabSettingsQuizAvailabilityPublic,
            value: quizDetails.availability == QuizAvailability.public,
            onChanged: (value) {
              controller.changeQuizAvailability(
                value! ? QuizAvailability.public : QuizAvailability.private,
              );
            },
          ),
          const ExtraLargeVSpacer(),
        ],
      ),
      orElse: () => const SizedBox.shrink(),
    );
  }
}
