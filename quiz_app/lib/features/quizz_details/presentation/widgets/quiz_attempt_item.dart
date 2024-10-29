import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/common/widgets/quiz_status_badge.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/add_padding_extension.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/enums/participation_status_enum.dart';
import '../../../../generated/l10n.dart';
import '../../../../core/theme/app_color_scheme.dart';
import '../../domain/participant_model.dart';

class QuizAttemptItem extends StatelessWidget {
  const QuizAttemptItem({super.key, required this.participant});

  final ParticipantModel participant;

  @override
  Widget build(BuildContext context) {
    final status = ParticipationStatus.getParticipationStatus(participant.status);
    final dateParsed = DateFormat('yyyy-MM-ddTHH:mm:ss').parse(participant.participationDateUtc, true).toLocal();
    final dateFormatted = DateFormat('dd-MM-yyyy HH:mm').format(dateParsed);
    return Container(
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(AppTheme.quizAttemptItemBorderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          statusBadges(context, participant.status),
          const SmallVSpacer(),
          Builder(
            builder: (context) {
              if (status != ParticipationStatus.started && status != ParticipationStatus.stopped) {
                return Column(
                  children: [
                    InfoRow(
                      label: S.of(context).quizzDetailsTabStatisticsScore,
                      value: "${participant.score}%",
                    ),
                    const SmallVSpacer(),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
          InfoRow(
            label: S.of(context).quizzDetailsTabStatisticsName,
            value: participant.displayName,
          ),
          const SmallVSpacer(),
          InfoRow(
            label: S.of(context).quizzDetailsTabStatisticsDate,
            value: dateFormatted.toString(),
          ),
        ],
      ).addPadding(padding: const EdgeInsets.all(AppTheme.pageDefaultSpacingSize)),
    );
  }

  Widget statusBadges(BuildContext context, String status) {
    final participationStatus = ParticipationStatus.getParticipationStatus(status);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        QuizStatusBadge(
          text: S.of(context).quizzDetailsTabStatisticsDetailsStatusBadge,
          backgroundColor: AppColorScheme.secondary,
          textColor: AppColorScheme.primary,
        ),
        QuizStatusBadge(
          text: participationStatus.label,
          backgroundColor: participationStatus.backgroundColor,
          textColor: participationStatus.textColor,
        )
      ],
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: context.textTheme.bodyMedium),
        Text(value, style: context.textTheme.headlineSmall),
      ],
    );
  }
}
