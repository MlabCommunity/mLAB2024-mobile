import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/common/widgets/dotted_border_container.dart';
import '../../../../core/common/widgets/quizz_status_tile.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/add_padding_extension.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/res/media_res.dart';
import '../../../../core/services/app_router.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/quiz_dashboard_model.dart';
import 'delete_quiz_dialog.dart';

class QuizListItem extends ConsumerWidget {
  const QuizListItem({super.key, required this.quizEntity});

  final QuizDashboardModel quizEntity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: AppColorScheme.surfaceContainer,
      shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppTheme.quizListItemBorderRadius)),
      child: InkWell(
        onTap: () {
          ref
              .read(appRouterProvider)
              .push(QuizzDetailsRoute(id: quizEntity.id));
        },
        borderRadius: BorderRadius.circular(AppTheme.quizListItemBorderRadius),
        splashColor: AppColorScheme.textPrimary.withOpacity(0.1),
        splashFactory: InkRipple.splashFactory,
        child: quizContainer(
          [
            quizHeader(context),
            const SmallVSpacer(),
            quizDescription(context),
            const LargeVSpacer(),
            QuizzStatusTile(quizz: quizEntity),
          ],
        ),
      ),
    );
  }

  Widget quizContainer(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppTheme.quizListItemBorderRadius),
      ),
      child: DottedBorderContainer(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children)
            .addPadding(
          padding: const EdgeInsets.all(AppTheme.quizListItemPadding),
        ),
      ),
    );
  }

  Widget quizHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(quizEntity.title,
              style: context.theme.textTheme.headlineSmall!.copyWith(
                fontSize: AppTheme.quizItemHeadingFontSize,
              ),
              maxLines: AppTheme.quizItemHeadingMaxLines,
              overflow: TextOverflow.ellipsis),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              DeleteQuizDialog.show(context, quizEntity);
            },
            splashColor: AppColorScheme.textPrimary.withOpacity(0.1),
            splashFactory: InkRipple.splashFactory,
            customBorder: const CircleBorder(),
            child: SvgPicture.asset(
              MediaRes.deleteQuiz,
              width: AppTheme.quizListItemDeleteIconSize,
              height: AppTheme.quizListItemDeleteIconSize,
            ).addPadding(
                padding:
                    const EdgeInsets.all(AppTheme.quizListItemIconPadding)),
          ),
        ),
      ],
    );
  }

  Widget quizDescription(BuildContext context) {
    return Text(
      quizEntity.description,
      style: context.theme.textTheme.bodyMedium!
          .copyWith(color: AppColorScheme.textSecondary),
      maxLines: AppTheme.quizItemDescriptionMaxLines,
      overflow: TextOverflow.ellipsis,
    );
  }
}
