import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/models/answer_model_interface.dart';

part 'take_quiz_result_answer_model.freezed.dart';
part 'take_quiz_result_answer_model.g.dart';

@freezed
class TakeQuizResultAnswerModel with _$TakeQuizResultAnswerModel implements AnswerModelInterface {
  const factory TakeQuizResultAnswerModel({
    required String id,
    required String content,
    required bool isCorrect,
  }) = _TakeQuizResultAnswerModel;

  factory TakeQuizResultAnswerModel.fromJson(Map<String, dynamic> json) => _$TakeQuizResultAnswerModelFromJson(json);
}
