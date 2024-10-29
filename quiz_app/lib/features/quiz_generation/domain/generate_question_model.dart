import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/models/answer_model_interface.dart';
import '../../../core/models/question_model_interface.dart';
import 'answer_model_converter.dart';

part 'generate_question_model.freezed.dart';
part 'generate_question_model.g.dart';

@freezed
class GenerateQuestionModel with _$GenerateQuestionModel implements QuestionModelInterface {
  const GenerateQuestionModel._();
  const factory GenerateQuestionModel({
    required String title,
    @AnswerModelConverter() required List<AnswerModelInterface> generateAnswers,
  }) = _GenerateQuestionModel;

  factory GenerateQuestionModel.fromJson(Map<String, dynamic> json) => _$GenerateQuestionModelFromJson(json);
  
  @override
  List<AnswerModelInterface> get answers => generateAnswers;
}
