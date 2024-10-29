import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/models/answer_model_interface.dart';

part 'answer_model.freezed.dart';
part 'answer_model.g.dart';

@freezed
class AnswerModel with _$AnswerModel implements AnswerModelInterface {
  const factory AnswerModel({
    required String content,
    required bool isCorrect,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) => _$AnswerModelFromJson(json);
}