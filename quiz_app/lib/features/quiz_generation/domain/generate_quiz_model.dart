import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/models/question_model_interface.dart';
import 'question_model_converter.dart';

part 'generate_quiz_model.g.dart';
part 'generate_quiz_model.freezed.dart';

@freezed
class GenerateQuizModel with _$GenerateQuizModel {
  const factory GenerateQuizModel({
    required String title,
    required String description,
    @QuestionModelConverter() required List<QuestionModelInterface> generateQuestions,
  }) = _GenerateQuizModel;

  factory GenerateQuizModel.fromJson(Map<String, dynamic> json) => _$GenerateQuizModelFromJson(json);
}
