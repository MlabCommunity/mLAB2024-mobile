import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/common/widgets/quizz_qr_code.dart';
import '../../../core/common/widgets/secondary_button.dart';
import '../../../core/common/widgets/share_link_container.dart';
import '../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../core/services/app_router.dart';
import '../../../core/theme/app_color_scheme.dart';
import '../../../core/theme/app_theme.dart';
import '../../../generated/l10n.dart';

class ShareQuizzBottomSheet extends ConsumerWidget {
  const ShareQuizzBottomSheet({super.key, required this.link});

  final String link;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize).copyWith(bottom: AppTheme.pageDefaultSpacingSize * 1.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Text(
          //   S.of(context).quizzShareHeading,
          //   style: context.theme.textTheme.headlineMedium,
          // ),
          const SmallVSpacer(),
          QuizzQrCode(link: link),
          const SmallVSpacer(),
          ShareLinkContainer(
            link: link,
            color: AppColorScheme.surface,
          ),
          const MediumVSpacer(),
          SecondaryButton(
            onPressed: () async {
              await Share.share(link);
            },
            text: S.of(context).quizzShareButton,
            width: double.infinity,
          ),
          const MediumVSpacer(),
          SecondaryButton(
            onPressed: () {
              ref.read(appRouterProvider).maybePop();
            },
            text: S.of(context).cancelButton,
            width: double.infinity,
            bgColor: Colors.transparent,
          ),
        ],
      ),
    );
  }

  static void show(BuildContext context, String link) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) => Wrap(
        children: [
          ShareQuizzBottomSheet(link: link),
        ],
      ),
    );
  }
}
