import 'package:freezed_annotation/freezed_annotation.dart';

import '../../quiz_generation/domain/answer_model_converter.dart';
import '../../../core/models/answer_model_interface.dart';
import '../../../core/models/question_model_interface.dart';

part 'update_question_model.freezed.dart';
part 'update_question_model.g.dart';

@freezed
class UpdateQuestionModel with _$UpdateQuestionModel implements QuestionModelInterface {
  const UpdateQuestionModel._();
  const factory UpdateQuestionModel({
    required String id,
    required String title,
    @AnswerModelConverter() required List<AnswerModelInterface> updateAnswers,
    required String quizID,
  }) = _UpdateQuestionModel;

  factory UpdateQuestionModel.fromJson(Map<String, dynamic> json) => _$UpdateQuestionModelFromJson(json);
  
  @override
  List<AnswerModelInterface> get answers => updateAnswers;
}
