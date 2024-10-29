import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/models/question_model_interface.dart';
import 'answer_details_model.dart';

part 'question_details_model.freezed.dart';
part 'question_details_model.g.dart';

@freezed
class QuestionDetailsModel with _$QuestionDetailsModel implements QuestionModelInterface {
  const factory QuestionDetailsModel({
    required String id,
    required String title,
    required List<AnswerDetailsModel> answers,
  }) = _QuestionDetailsModel;

  factory QuestionDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionDetailsModelFromJson(json);
}