import 'package:freezed_annotation/freezed_annotation.dart';

import 'quizz_archive_answer_model.dart';

part 'quizz_archive_question_model.freezed.dart';
part 'quizz_archive_question_model.g.dart';

@freezed
class QuizzArchiveQuestionModel with _$QuizzArchiveQuestionModel {
  const factory QuizzArchiveQuestionModel({
    required String id,
    required String title,
    required List<QuizzArchiveAnswerModel> answers,
  }) = _QuizzArchiveQuestionModel;

  factory QuizzArchiveQuestionModel.fromJson(Map<String, dynamic> json) => _$QuizzArchiveQuestionModelFromJson(json);
}
