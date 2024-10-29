import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/models/question_model_interface.dart';
import '../../quizz_details/domain/question_details_model.dart';
import 'generate_question_model.dart';

class QuestionModelConverter implements JsonConverter<QuestionModelInterface, Map<String, dynamic>> {
  const QuestionModelConverter();
  @override
  QuestionModelInterface fromJson(Map<String, dynamic> json) {
    if(json.containsKey('id')){
      return QuestionDetailsModel.fromJson(json);
    } else {
      return GenerateQuestionModel.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(QuestionModelInterface questionModel) {
    if(questionModel is QuestionDetailsModel){
      return questionModel.toJson();
    } else {
      return (questionModel as GenerateQuestionModel).toJson();
    }
  }
}