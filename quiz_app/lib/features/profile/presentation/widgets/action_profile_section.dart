import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/widgets/dialogs/delete_dialog.dart';
import '../../../../core/common/widgets/errors/error_snackbar.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/res/media_res.dart';
import '../../../../core/services/app_router.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../generated/l10n.dart';
import '../../../auth/application/auth_controller.dart';
import '../../application/user_controller.dart';
import 'profile_action_button.dart';

class ActionProfileSection extends ConsumerWidget {
  const ActionProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userController = ref.read(userControllerProvider.notifier);
    final authController = ref.read(authControllerProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).profileActionsHeading,
          style: context.theme.textTheme.headlineSmall,
        ),
        const MediumVSpacer(),
        ProfileActionButton(
          title: S.of(context).profileDeleteButton,
          onPressed: () {
            try {
              DeleteDialog(
                title: S.of(context).profileDeleteDialogHeading,
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SmallVSpacer(),
                    Text(
                      S.of(context).profileDeleteDialogDescription,
                      style: context.theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
                onConfirm: () async {
                  ref.read(appRouterProvider).maybePop();
                  await authController.deleteUser();
                },
              ).show(context);
            } catch (_) {
              context.mounted ? ErrorSnackbar.show(context, S.of(context).somethingWentWrong) : null;
            }
          },
          textColor: AppColorScheme.error,
          backgroundColor: AppColorScheme.errorLight,
          trailing: SvgPicture.asset(
            MediaRes.trash,
            colorFilter: const ColorFilter.mode(AppColorScheme.error, BlendMode.srcIn),
          ),
        ),
        const SmallVSpacer(),
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
