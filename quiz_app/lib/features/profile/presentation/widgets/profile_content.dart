import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/errors/error_snackbar.dart';
import '../../../../core/common/widgets/form_field.dart';
import '../../../../core/common/widgets/info_snackbar.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/services/language_provider.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';
import '../../application/user_controller.dart';
import '../../domain/user.dart';
import 'action_profile_section.dart';
import 'archive_profile_section.dart';
import 'language_profile_section.dart';

class ProfileContent extends ConsumerStatefulWidget {
  const ProfileContent({super.key, required this.user});
  final User user;

  @override
  ConsumerState<ProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends ConsumerState<ProfileContent> {
  final usernameTextController = TextEditingController();
  final emailTextController = TextEditingController();

  @override
  void dispose() {
    usernameTextController.dispose();
    emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var selectedValue = ref.watch(languageProvider).languageCode;
    usernameTextController.text = widget.user.displayName;
    emailTextController.text = widget.user.email;
    final userController = ref.read(userControllerProvider.notifier);

    return Padding(
      padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).profileSubheading,
              style: context.theme.textTheme.headlineMedium,
              textAlign: TextAlign.start,
            ),
            const SmallVSpacer(),
            IFormField(
              hintText: S.of(context).profileNameHint,
              controller: emailTextController,
              labelText: S.of(context).profileEmailLabel,
              enabled: false,
            ),
            const SmallVSpacer(),
            IFormField(
              hintText: S.of(context).profileNameHint,
              controller: usernameTextController,
              labelText: S.of(context).profileNameLabel,
              formButton: TextButton(
                onPressed: () async {
                  final success = await userController.updateUser(user: widget.user.copyWith(displayName: usernameTextController.text));
                  if(success){
                    context.mounted ? InfoSnackbar.show(context, S.of(context).successfulProfileUpdate, color: AppColorScheme.success) : null;
                  }
                  else{
                    context.mounted ? ErrorSnackbar.show(context, S.of(context).somethingWentWrong): null;
                  }
                },
                child: Text(S.of(context).profileUpdateButton),
              ),
            ),
            const CustomVSpacer(AppTheme.profileSpacerValue),
            const ArchiveProfileSection(),
            const CustomVSpacer(AppTheme.profileSpacerValue),
            LanguageProfileSection(selectedValue: selectedValue),
            const CustomVSpacer(AppTheme.profileSpacerValue),
            const ActionProfileSection(),
          ],
        ),
      ),
    );
  }
}
