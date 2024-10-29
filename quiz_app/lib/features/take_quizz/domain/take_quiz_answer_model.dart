import 'package:freezed_annotation/freezed_annotation.dart';

part 'take_quiz_answer_model.freezed.dart';
part 'take_quiz_answer_model.g.dart';

@freezed
class TakeQuizAnswerModel with _$TakeQuizAnswerModel {
  const factory TakeQuizAnswerModel({
    required String id,
    required String content,
  }) = _TakeQuizAnswerModel;

  factory TakeQuizAnswerModel.fromJson(Map<String, dynamic> json) => _$TakeQuizAnswerModelFromJson(json);
}
