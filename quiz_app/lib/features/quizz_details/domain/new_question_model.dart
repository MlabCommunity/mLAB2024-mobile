import 'package:freezed_annotation/freezed_annotation.dart';

import '../../quiz_generation/domain/answer_model_converter.dart';
import '../../../core/models/answer_model_interface.dart';
import '../../../core/models/question_model_interface.dart';

part 'new_question_model.freezed.dart';
part 'new_question_model.g.dart';

@freezed
class NewQuestionModel with _$NewQuestionModel implements QuestionModelInterface {
  const NewQuestionModel._();
  const factory NewQuestionModel({
    required String title,
    @AnswerModelConverter() required List<AnswerModelInterface> createAnswers,
    required String quizID,
  }) = _NewQuestionModel;

  factory NewQuestionModel.fromJson(Map<String, dynamic> json) => _$NewQuestionModelFromJson(json);
  
  @override
  List<AnswerModelInterface> get answers => createAnswers;
}
