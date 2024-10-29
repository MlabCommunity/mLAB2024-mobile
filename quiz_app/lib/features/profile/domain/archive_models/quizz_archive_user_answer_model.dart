import 'package:freezed_annotation/freezed_annotation.dart';

part 'quizz_archive_user_answer_model.freezed.dart';
part 'quizz_archive_user_answer_model.g.dart';

@freezed
class QuizzArchiveUserAnswerModel with _$QuizzArchiveUserAnswerModel {
  const factory QuizzArchiveUserAnswerModel({
    required String questionId,
    required String answerId,
  }) = _QuizzArchiveUserAnswerModel;

  factory QuizzArchiveUserAnswerModel.fromJson(Map<String, dynamic> json) => _$QuizzArchiveUserAnswerModelFromJson(json);
}
