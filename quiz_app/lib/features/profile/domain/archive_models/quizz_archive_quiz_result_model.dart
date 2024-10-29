import 'package:freezed_annotation/freezed_annotation.dart';

part 'quizz_archive_quiz_result_model.freezed.dart';
part 'quizz_archive_quiz_result_model.g.dart';

@freezed
class QuizzArchiveQuizResultModel with _$QuizzArchiveQuizResultModel {
  const factory QuizzArchiveQuizResultModel({
    required int totalQuestions,
    required int correctAnswers,
    required double scorePercentage,
  }) = _QuizzArchiveQuizResultModel;

  factory QuizzArchiveQuizResultModel.fromJson(Map<String, dynamic> json) => _$QuizzArchiveQuizResultModelFromJson(json);
}
