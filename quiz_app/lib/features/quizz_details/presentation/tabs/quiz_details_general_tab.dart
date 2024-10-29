import 'package:flutter/material.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/quiz_details_controller.dart';
import '../widgets/general_quiz_page_settings.dart';

class QuizDetailsGeneralTab extends ConsumerWidget {
  const QuizDetailsGeneralTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizDetailsControllerProvider);
    return state.maybeWhen(
      loaded: (quizDetails, _, __) {
        TextEditingController(text: quizDetails.description);
        return Padding(
          padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).quizzDetailsTabGeneralSubheading,
                style: context.textTheme.bodyMedium?.copyWith(color: AppColorScheme.textSecondary),
              ),
              const MediumVSpacer(),
              Text(
                S.of(context).quizzDetailsTabGeneralPageSettingsHeading,
                style: context.textTheme.headlineMedium?.copyWith(fontSize: 18),
              ),
              const MediumVSpacer(),
              const GeneralQuizPageSettings(),
            ],
          ),
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
