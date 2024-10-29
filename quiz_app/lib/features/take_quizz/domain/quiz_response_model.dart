import 'package:freezed_annotation/freezed_annotation.dart';

import 'take_quiz_question_model.dart';

part 'quiz_response_model.freezed.dart';
part 'quiz_response_model.g.dart';

@freezed
class QuizResponseModel with _$QuizResponseModel {
  const factory QuizResponseModel({
    required String id,
    required String title,
    required String description,
    required List<TakeQuizQuestionModel> questions,
  }) = _QuizResponseModel;

  factory QuizResponseModel.fromJson(Map<String, dynamic> json) => _$QuizResponseModelFromJson(json);
}
