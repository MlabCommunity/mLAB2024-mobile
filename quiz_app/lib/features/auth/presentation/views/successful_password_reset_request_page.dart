import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/add_padding_extension.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/res/media_res.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';

@RoutePage()
class SuccessfulPasswordResetRequestPage extends StatelessWidget {
  const SuccessfulPasswordResetRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(MediaRes.passwordResetSticker),
            const LargeVSpacer(),
            Text(
              S.of(context).successfulPasswordResetRequestHeading,
              style: context.textTheme.headlineMedium,
            ),
            const SmallVSpacer(),
            SizedBox(
              width: AppTheme.forgotPasswordSuccessDescriptionWidth,
              child: Text(
                S.of(context).successfulPasswordResetRequestSubheading,
                style: context.textTheme.bodyMedium?.copyWith(color: AppColorScheme.textSecondary),
                textAlign: TextAlign.center,
              ),
            ),
            const MediumVSpacer(),
            BasicButton(
              text: S.of(context).successfulPasswordResetRequestButton,
              onPressed: () {
                Navigator.of(context).pop();
              },
              width: double.infinity,
            )
          ],
        ).addPadding(padding: const EdgeInsets.symmetric(horizontal: AppTheme.forgotPasswordSuccessScreenPadding)),
      ),
    );
  }
}
