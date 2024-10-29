import 'dart:ui';

import '../../../generated/l10n.dart';
import '../../theme/app_color_scheme.dart';

enum ParticipationStatus {
  started(
    AppColorScheme.warningLight,
    AppColorScheme.warning,
  ),
  stopped(
    AppColorScheme.errorLight,
    AppColorScheme.error,
  ),
  finished(
    AppColorScheme.successLight,
    AppColorScheme.success,
  );

  const ParticipationStatus(this.backgroundColor, this.textColor);
  final Color backgroundColor;
  final Color textColor;

  static ParticipationStatus getParticipationStatus(String status) {
    switch (status) {
      case 'Started':
        return ParticipationStatus.started;
      case 'Stopped':
        return ParticipationStatus.stopped;
      case 'Finished':
        return ParticipationStatus.finished;
      default:
        return ParticipationStatus.stopped;
    }
  }

  String get label {
    switch (this) {
      case ParticipationStatus.started:
        return S.current.quizzDetailsTabStatisticsStartedStatusBadge;
      case ParticipationStatus.stopped:
        return S.current.quizzDetailsTabStatisticsStoppedStatusBadge;
      case ParticipationStatus.finished:
        return S.current.quizzDetailsTabStatisticsFinishedStatusBadge;
      default:
        return S.current.quizzDetailsTabStatisticsStoppedStatusBadge;
    }
  }
}
