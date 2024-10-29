import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import '../../../core/common/widgets/basic_button.dart';
import '../../../core/common/widgets/errors/basic_error_page.dart';
import '../../../core/common/widgets/quizz_qr_code.dart';
import '../../../core/common/widgets/secondary_button.dart';
import '../../../core/common/widgets/share_link_container.dart';
import '../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/res/media_res.dart';
import '../../../core/services/app_router.dart';
import '../../../core/theme/app_theme.dart';
import '../../../generated/l10n.dart';
import '../application/quiz_generation_controller.dart';

class QuizzSuccessPage extends ConsumerWidget {
  const QuizzSuccessPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quizGenerationControllerProvider);
    final controller = ref.read(quizGenerationControllerProvider.notifier);
    return state.maybeWhen(
      orElse: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      error: (message) {
        return BasicErrorPage(
          onRefresh: () {
            controller.resetState();
            ref.read(appRouterProvider).replaceAll([const DashboardRoute()]);
          },
          refreshButtonText: S.of(context).goBackToDashboard,
          imageAsset: MediaRes.basicError,
          errorText: S.of(context).somethingWentWrong,
        );
      },
      created: (quizResult) {
        return Padding(
          padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).quizzCreationSuccessHeading,
                  style: context.textTheme.headlineLarge,
                ),
                const SmallVSpacer(),
                Text(
                  S.of(context).quizzCreationSuccessSubheading,
                  style: context.textTheme.bodyMedium,
                ),
                const LargeVSpacer(),
                QuizzQrCode(link: quizResult.url),
                const LargeVSpacer(),
                ShareLinkContainer(
                  link: quizResult.url,
                  color: Colors.white,
                ),
                const LargeVSpacer(),
                BasicButton(
                  onPressed: () async {
                    await Share.share(quizResult.url);
                  },
                  text: S.of(context).quizzCreationSuccessShareButton,
                  width: double.infinity,
                ),
                const MediumVSpacer(),
                SecondaryButton(
                  onPressed: () {
                    ref.read(quizGenerationControllerProvider.notifier).resetState();
                    ref.read(appRouterProvider).push(const DashboardRoute());
                  },
                  text: S.of(context).quizzCreationSuccessBackButton,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
