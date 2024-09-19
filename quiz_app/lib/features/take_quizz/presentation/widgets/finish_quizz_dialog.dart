import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/dialogs/basic_dialog.dart';
import '../../../../core/common/widgets/errors/error_snackbar.dart';
import '../../../../core/common/widgets/loading_indicator.dart';
import '../../../../core/common/widgets/secondary_button.dart';
import '../../../../core/common/widgets/spacers/horizontal_spacers.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/services/app_router.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../generated/l10n.dart';
import '../../application/quizz_take_controller.dart';

class FinishQuizzDialog extends ConsumerWidget {
  const FinishQuizzDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizzController = ref.read(quizzTakeControllerProvider.notifier);
    final state = ref.watch(quizzTakeControllerProvider);

    return BasicDialog(
      title: S.of(context).quizzTakeFinishHeading,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SmallVSpacer(),
          Text(
            S.of(context).quizzTakeFinishDescription,
            style: context.textTheme.bodyMedium,
          ),
        ],
      ),
      actions: [
        SecondaryButton(
          onPressed: () {
            ref.read(appRouterProvider).maybePop();
          },
          text: S.of(context).cancelButton,
          width: null,
          bgColor: Colors.transparent,
          contentColor: AppColorScheme.primary,
        ),
        const SmallHSpacer(),
        SecondaryButton(
          onPressed: () {
            quizzController.finishQuizz();
            state.maybeWhen(
              resultReceived: (quizResult) {
                ref.read(appRouterProvider).maybePop();
                ref.read(appRouterProvider).push(TakeQuizzSummaryRoute(quizResult: quizResult));
              },
              error: (error) {
                ref.read(appRouterProvider).maybePop();
                ErrorSnackbar.show(context, error);
              },
              orElse: () => const LoadingIndicator(),
            );
          },
          text: S.of(context).quizzTakeFinishButton,
          width: null,
          bgColor: AppColorScheme.error,
          contentColor: AppColorScheme.textContrast,
        ),
      ],
    );
  }

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const FinishQuizzDialog(),
    );
  }
}
