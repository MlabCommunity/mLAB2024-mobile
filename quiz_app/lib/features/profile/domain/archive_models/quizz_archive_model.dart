import 'package:freezed_annotation/freezed_annotation.dart';

import 'quizz_archive_question_model.dart';
import 'quizz_archive_quiz_result_model.dart';
import 'quizz_archive_user_answer_model.dart';

part 'quizz_archive_model.freezed.dart';
part 'quizz_archive_model.g.dart';

@freezed
class QuizzArchiveModel with _$QuizzArchiveModel {
  const factory QuizzArchiveModel({
    required String quizId,
    required String quizTitle,
    required String quizDescription,
    required String participationDateUtc,
    required String status,
    required List<QuizzArchiveQuestionModel> questions,
    required List<QuizzArchiveUserAnswerModel> userAnswers,
    @Default(QuizzArchiveQuizResultModel(totalQuestions: 0, scorePercentage: 0, correctAnswers: 0)) QuizzArchiveQuizResultModel quizResult,
  }) = _QuizzArchiveModel;

  factory QuizzArchiveModel.fromJson(Map<String, dynamic> json) => _$QuizzArchiveModelFromJson(json);
}
