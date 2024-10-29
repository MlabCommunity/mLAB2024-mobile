import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/models/answer_model_interface.dart';
import '../../quizz_details/domain/answer_details_model.dart';
import 'answer_model.dart';

class AnswerModelConverter implements JsonConverter<AnswerModelInterface, Map<String, dynamic>> {
  const AnswerModelConverter();

  @override
  AnswerModelInterface fromJson(Map<String, dynamic> json) {
    if (json.containsKey('id')) {
      return AnswerDetailsModel.fromJson(json);
    } else {
      return AnswerModel.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(AnswerModelInterface answer) {
    if (answer is AnswerDetailsModel) {
      return answer.toJson();
    } else {
      return (answer as AnswerModel).toJson();
    }
  }
}
