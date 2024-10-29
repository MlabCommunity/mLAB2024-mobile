import 'package:flutter/material.dart';

import '../../res/media_res.dart';
import '../../theme/app_color_scheme.dart';

enum AnswerResult {
  correct(
    AppColorScheme.success,
    AppColorScheme.successLight,
    MediaRes.correctAnswer,
  ),
  wrong(
    AppColorScheme.error,
    AppColorScheme.errorLight,
    MediaRes.wrongAnswer,
  ),
  neutral(
    AppColorScheme.textPrimary,
    Colors.white,
    null,
  );

  final Color textColor;
  final Color backgroundColor;
  final String? iconPath;

  const AnswerResult(this.textColor, this.backgroundColor, this.iconPath);

  static AnswerResult getAnswerState(String answerId, String correctAnswerId, String userAnswerId) {
    if (answerId == correctAnswerId) {
      return AnswerResult.correct;
    } else if (answerId == userAnswerId) {
      return AnswerResult.wrong;
    } else {
      return AnswerResult.neutral;
    }
  }
}
