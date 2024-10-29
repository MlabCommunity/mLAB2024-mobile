import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/common/widgets/text_area.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/services/language_provider.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';
import '../../domain/user.dart';
import 'guest_action_profile_section.dart';
import 'language_profile_section.dart';

class GuestProfileContent extends ConsumerStatefulWidget {
  const GuestProfileContent({super.key, required this.user});
  final User user;

  @override
  ConsumerState<GuestProfileContent> createState() => _ProfileContentState();
}

class _ProfileContentState extends ConsumerState<GuestProfileContent> {
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

    return Padding(
      padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).profileSubheading,
            style: context.theme.textTheme.headlineMedium,
            textAlign: TextAlign.start,
          ),
          const SmallVSpacer(),
          TextArea(
            hintText: S.of(context).profileNameHint,
            controller: usernameTextController,
            maxLines: 3,
            labelText: S.of(context).profileNameLabel,
            enabled: false,
          ),
          const CustomVSpacer(AppTheme.profileSpacerValue),
          LanguageProfileSection(selectedValue: selectedValue),
          const CustomVSpacer(AppTheme.profileSpacerValue),
          const GuestActionProfileSection(),
        ],
      ),
    );
  }
}
