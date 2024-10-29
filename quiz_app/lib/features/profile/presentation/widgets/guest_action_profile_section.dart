import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/res/media_res.dart';
import '../../../../core/services/app_router.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../generated/l10n.dart';
import '../../application/user_controller.dart';
import 'profile_action_button.dart';

class GuestActionProfileSection extends ConsumerWidget {
  const GuestActionProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userController = ref.watch(userControllerProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).profileActionsHeading,
          style: context.theme.textTheme.headlineSmall,
        ),
        const MediumVSpacer(),
        ProfileActionButton(
          title: S.of(context).registerButton,
          onPressed: () {
            ref.read(appRouterProvider).push(const SignUpRoute());
          },
          trailing: const Icon(
            Icons.person_add,
            color: AppColorScheme.textPrimary,
          ),
        ),
        const MediumVSpacer(),
        ProfileActionButton(
          title: S.of(context).profileSignOutButton,
          onPressed: () async {
            await userController.signOut();
          },
          trailing: SvgPicture.asset(
            MediaRes.logout,
            colorFilter: const ColorFilter.mode(AppColorScheme.textPrimary, BlendMode.srcIn),
          ),
        ),
      ],
    );
  }
}
