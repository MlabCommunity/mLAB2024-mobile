import 'package:freezed_annotation/freezed_annotation.dart';

import 'take_quiz_answer_model.dart';

part 'take_quiz_question_model.freezed.dart';
part 'take_quiz_question_model.g.dart';

@freezed
class TakeQuizQuestionModel with _$TakeQuizQuestionModel {
  const factory TakeQuizQuestionModel({
    required String id,
    required String title,
    required List<TakeQuizAnswerModel> answers,
  }) = _TakeQuizQuestionModel;

  factory TakeQuizQuestionModel.fromJson(Map<String, dynamic> json) => _$TakeQuizQuestionModelFromJson(json);
}
