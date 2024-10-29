import 'package:freezed_annotation/freezed_annotation.dart';

import 'take_quiz_result_question_model.dart';

part 'quiz_details_result_model.freezed.dart';
part 'quiz_details_result_model.g.dart';

@freezed
class QuizDetailsResultModel with _$QuizDetailsResultModel {
  const factory QuizDetailsResultModel({
    required String id,
    required String title,
    required String description,
    required List<TakeQuizResultQuestionModel> questions,
  }) = _QuizDetailsResultModel;

  factory QuizDetailsResultModel.fromJson(Map<String, dynamic> json) => _$QuizDetailsResultModelFromJson(json);
}
