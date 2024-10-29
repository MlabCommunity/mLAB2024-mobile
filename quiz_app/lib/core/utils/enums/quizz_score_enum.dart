import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../res/media_res.dart';

enum QuizzScore {
  genius(
    Colors.green,
    MediaRes.quizzScoreGood,
  ),
  awesome(
    Colors.lightGreen,
    MediaRes.quizzScoreGood,
  ),
  good(
    Colors.yellow,
    MediaRes.quizzScoreGood,
  ),
  couldBeBetter(
    Colors.orange,
    MediaRes.quizzScoreBad,
  ),
  bad(
    Colors.red,
    MediaRes.quizzScoreBad,
  );

  final Color color;
  final String image;

  const QuizzScore(this.color, this.image);

  String get message {
    switch (this) {
      case QuizzScore.genius:
        return S.current.quizzTakeScoreURGenius;
      case QuizzScore.awesome:
        return S.current.quizzTakeScoreAwesome;
      case QuizzScore.good:
        return S.current.quizzTakeScoreGood;
      case QuizzScore.couldBeBetter:
        return S.current.quizzTakeScoreCouldBeBetter;
      case QuizzScore.bad:
        return S.current.quizzTakeScoreBad;
    }
  }

  static QuizzScore getQuizzScore(double percentage) {
    if (percentage >= 90) {
      return QuizzScore.genius;
    } else if (percentage >= 80) {
      return QuizzScore.awesome;
    } else if (percentage >= 60) {
      return QuizzScore.good;
    } else if (percentage >= 40) {
      return QuizzScore.couldBeBetter;
    } else {
      return QuizzScore.bad;
    }
  }
}
