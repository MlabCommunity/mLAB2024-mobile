import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/res/media_res.dart';
import '../../../../core/services/app_router.dart';
import '../../../../generated/l10n.dart';
import '../widgets/profile_action_button.dart';

class ArchiveProfileSection extends ConsumerWidget {
  const ArchiveProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).profileArchiveHeading,
          style: context.theme.textTheme.headlineSmall,
        ),
        const MediumVSpacer(),
        ProfileActionButton(
          title: S.of(context).profileArchiveButton,
          onPressed: () {
            ref.read(appRouterProvider).push(const ArchiveRoute());
          },
          trailing: SvgPicture.asset(
            MediaRes.arrowForward,
          ),
        ),
      ],
    );
  }
}
