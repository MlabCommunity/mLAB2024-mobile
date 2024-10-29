import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_quiz_model.freezed.dart';
part 'submit_quiz_model.g.dart';

@freezed
class SubmitQuizModel with _$SubmitQuizModel {
  const factory SubmitQuizModel({
    required String quizParticipationId,
    required List<String> questionsId,
    required List<String> answersId,
  }) = _SubmitQuizModel;

  factory SubmitQuizModel.fromJson(Map<String, dynamic> json) => _$SubmitQuizModelFromJson(json);
}
