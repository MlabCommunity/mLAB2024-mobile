import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/errors/error_snackbar.dart';
import '../../../../core/common/widgets/info_snackbar.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/common/widgets/text_area.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../generated/l10n.dart';
import '../../application/quiz_details_controller.dart';

class GeneralQuizPageSettings extends ConsumerStatefulWidget {
  const GeneralQuizPageSettings({super.key});

  @override
  ConsumerState createState() => _GeneralQuizPageSettingsState();
}

class _GeneralQuizPageSettingsState extends ConsumerState<GeneralQuizPageSettings> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    titleController.text = ref.watch(quizDetailsControllerProvider).maybeWhen(
          loaded: (quizDetails, _, __) => quizDetails.title,
          orElse: () => '',
        );
    descriptionController.text = ref.watch(quizDetailsControllerProvider).maybeWhen(
          loaded: (quizDetails, _, __) => quizDetails.description,
          orElse: () => '',
        );

    final controller = ref.read(quizDetailsControllerProvider.notifier);
    final state = ref.watch(quizDetailsControllerProvider);

    return Column(
      children: [
        TextArea(
          labelText: S.of(context).quizzDetailsTabGeneralQuizTitle,
          hintText: S.of(context).quizzDetailsTabGeneralQuizTitleHint,
          controller: titleController,
          minLines: 1,
          maxLines: 3,
        ),
        const SmallVSpacer(),
        Text(
          S.of(context).quizzDetailsTabGeneralQuizTitleTextFieldDescription,
          style: context.textTheme.bodyMedium?.copyWith(color: AppColorScheme.textSecondary),
        ),
        const LargeVSpacer(),
        TextArea(
          labelText: S.of(context).quizzDetailsTabGeneralQuizDescription,
          hintText: S.of(context).quizzDetailsTabGeneralQuizDescriptionHint,
          controller: descriptionController,
          minLines: 1,
          maxLines: 10,
        ),
        const SmallVSpacer(),
        Text(
          S.of(context).quizzDetailsTabGeneralQuizDescriptionTextFieldDescription,
          style: context.textTheme.bodyMedium?.copyWith(color: AppColorScheme.textSecondary),
        ),
        const MediumVSpacer(),
        Align(
          alignment: Alignment.centerRight,
          child: state.maybeWhen(
            loaded: (quiz, _, __) => BasicButton(
              onPressed: () async {
                final success = await controller.updateQuizDetails(
                  quiz.id,
                  titleController.text,
                  descriptionController.text,
                );
                if (context.mounted) {
                  if (success) {
                    InfoSnackbar.show(
                      context,
                      S.of(context).quizzDetailsTabGeneralSuccessfullSave,
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
              text: S.of(context).quizzDetailsSaveChangesButton,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
