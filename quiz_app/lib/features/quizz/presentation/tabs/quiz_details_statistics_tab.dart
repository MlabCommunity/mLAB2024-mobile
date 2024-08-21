import 'package:flutter/material.dart';
import 'package:quiz_app/core/common/widgets/spacers/vertical_spacers.dart';
import 'package:quiz_app/core/extensions/add_padding_extension.dart';
import 'package:quiz_app/core/extensions/context_extension.dart';
import 'package:quiz_app/core/theme/app_color_scheme.dart';
import 'package:quiz_app/features/quizz/presentation/widgets/quiz_attempt_item.dart';
import 'package:quiz_app/generated/l10n.dart';

class QuizDetailsStatisticsTab extends StatelessWidget {
  const QuizDetailsStatisticsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MediumVSpacer(),
        statisticsHeader(context),
        const MediumVSpacer(),
        statisticsList(context),
      ],
    );
  }

  Widget statisticsHeader(BuildContext context) {
    return Text(
      S.of(context).quizzDetailsTabStatisticsSubheading,
      style: context.textTheme.bodyMedium!
          .copyWith(color: AppColorScheme.textSecondary),
    );
  }

  Widget statisticsList(context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return const Column(
              children: [
                QuizAttemptItem(),
                MediumVSpacer(),
              ],
            );
          },
        ),
      ],
    );
  }
}
