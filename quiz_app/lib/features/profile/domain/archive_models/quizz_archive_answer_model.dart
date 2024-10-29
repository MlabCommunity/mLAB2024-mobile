import 'package:freezed_annotation/freezed_annotation.dart';

part 'quizz_archive_answer_model.freezed.dart';
part 'quizz_archive_answer_model.g.dart';

@freezed
class QuizzArchiveAnswerModel with _$QuizzArchiveAnswerModel {
  const factory QuizzArchiveAnswerModel({
    required String id,
    required String content,
    required bool isCorrect,
  }) = _QuizzArchiveAnswerModel;

  factory QuizzArchiveAnswerModel.fromJson(Map<String, dynamic> json) => _$QuizzArchiveAnswerModelFromJson(json);
}
