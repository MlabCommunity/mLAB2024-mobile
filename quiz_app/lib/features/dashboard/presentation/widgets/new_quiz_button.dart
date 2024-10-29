import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/widgets/dotted_border_container.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/res/media_res.dart';
import '../../../../core/services/app_router.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../generated/l10n.dart';

class NewQuizButton extends ConsumerWidget {
  const NewQuizButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _container(
      context,
      _content(context),
      () {
        ref.read(appRouterProvider).replace(const QuizzCreationRoute());
      },
    );
  }

  Widget _container(BuildContext context, Widget content, VoidCallback onTap) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppTheme.dashboardAddNewButtonBorderRadius),
        color: AppColorScheme.secondary,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: AppColorScheme.primaryLight.withOpacity(0.2),
          highlightColor: AppColorScheme.primaryLight.withOpacity(0.2),
          splashFactory: InkRipple.splashFactory,
          onTap: onTap,
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppTheme.dashboardAddNewButtonBorderRadius),
          ),
          child: DottedBorderContainer(
            child: content,
          ),
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    return SizedBox(
      height: AppTheme.dashboardAddNewButtonHeight,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              MediaRes.addQuiz,
              colorFilter: const ColorFilter.mode(AppColorScheme.primary, BlendMode.srcIn),
            ),
            const SmallVSpacer(),
            Text(
              S.of(context).addNewQuizzButton,
              style: context.theme.textTheme.labelMedium?.copyWith(
                color: AppColorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
