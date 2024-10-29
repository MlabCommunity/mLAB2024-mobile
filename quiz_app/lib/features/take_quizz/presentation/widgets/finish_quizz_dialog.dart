import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/dialogs/basic_dialog.dart';
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
          onPressed: () async {
            ref.read(appRouterProvider).maybePop();
            await quizzController.finishQuizz();
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
