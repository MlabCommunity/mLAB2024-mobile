import 'package:freezed_annotation/freezed_annotation.dart';

import 'take_quiz_result_answer_model.dart';

part 'take_quiz_result_question_model.freezed.dart';
part 'take_quiz_result_question_model.g.dart';

@freezed
class TakeQuizResultQuestionModel with _$TakeQuizResultQuestionModel {
  const factory TakeQuizResultQuestionModel({
    required String id,
    required String title,
    required List<TakeQuizResultAnswerModel> answers,
  }) = _TakeQuizResultQuestionModel;

  factory TakeQuizResultQuestionModel.fromJson(Map<String, dynamic> json) => _$TakeQuizResultQuestionModelFromJson(json);
}
