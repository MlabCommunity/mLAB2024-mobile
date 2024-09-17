import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/common/widgets/basic_button.dart';
import '../../../../core/common/widgets/secondary_button.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/services/app_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/enums/quizz_score_enum.dart';
import '../../../../generated/l10n.dart';

@RoutePage()
class TakeQuizzSummaryPage extends ConsumerWidget {
  const TakeQuizzSummaryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const total = 5;
    const score = 1;
    QuizzScore getQuizzScore() {
      double percentage = score / total;
      if (percentage >= 0.9) {
        return QuizzScore.genius;
      } else if (percentage >= 0.8) {
        return QuizzScore.awesome;
      } else if (percentage >= 0.6) {
        return QuizzScore.good;
      } else if (percentage >= 0.4) {
        return QuizzScore.couldBeBetter;
      } else {
        return QuizzScore.bad;
      }
    }

    QuizzScore quizzScore = getQuizzScore();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).quizzTakeSummaryHeading,
                style: context.textTheme.headlineLarge,
              ),
              const SmallVSpacer(),
              Text(
                S.of(context).quizzTakeSummaryDescription,
                style: context.textTheme.bodyMedium,
              ),
              const LargeVSpacer(),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).quizzTakeSummaryYourScore,
                        style: context.textTheme.headlineMedium,
                      ),
                    ),
                    const MediumVSpacer(),
                    Text(
                      '$score/$total',
                      style: TextStyle(
                        color: quizzScore.getColor(),
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      quizzScore.getMessage(),
                      style: context.textTheme.headlineMedium?.copyWith(
                        color: quizzScore.getColor(),
                      ),
                    ),
                    const MediumVSpacer(),
                    SvgPicture.asset(
                      quizzScore.getImage(),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              BasicButton(
                onPressed: () {
                  ref.read(appRouterProvider).push(const TakeQuizzResultRoute());
                },
                text: S.of(context).quizzTakeSummarySeeResults,
                width: double.infinity,
              ),
              const MediumVSpacer(),
              SecondaryButton(
                onPressed: () {
                  ref.read(appRouterProvider).replaceAll([const DashboardRoute()]);
                },
                text: S.of(context).goBackToDashboard,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}