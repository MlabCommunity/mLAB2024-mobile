import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/services/language_provider.dart';
import '../../../../generated/l10n.dart';
import 'language_radio_button.dart';

class LanguageProfileSection extends ConsumerWidget {
  const LanguageProfileSection({
    super.key,
    required this.selectedValue,
  });

  final String selectedValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var languageController = ref.read(languageProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).language,
          style: context.theme.textTheme.headlineSmall!,
        ),
        const MediumVSpacer(),
        LanguageRadioButton(
          value: 'en',
          groupValue: selectedValue,
          title: S.of(context).languageEnglish,
          onChanged: (value) {
            languageController.setLocale(const Locale('en'));
          },
        ),
        const SmallVSpacer(),
        LanguageRadioButton(
          value: 'pl',
          groupValue: selectedValue,
          title: S.of(context).languagePolish,
          onChanged: (value) {
            languageController.setLocale(const Locale('pl'));
          },
        ),
      ],
    );
  }
}
