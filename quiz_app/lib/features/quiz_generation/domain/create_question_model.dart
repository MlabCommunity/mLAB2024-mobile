import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/models/answer_model_interface.dart';
import 'answer_model_converter.dart';

part 'create_question_model.freezed.dart';
part 'create_question_model.g.dart';

@freezed
class CreateQuestionModel with _$CreateQuestionModel {
  const factory CreateQuestionModel({
    required String title,
    @AnswerModelConverter() required List<AnswerModelInterface> createQuizAnswers,
  }) = _CreateQuestionModel;

  factory CreateQuestionModel.fromGenerateQuestionModel({
    required String title,
    required List<AnswerModelInterface> generateQuizAnswers,
  }) {
    return CreateQuestionModel(
      title: title,
      createQuizAnswers: generateQuizAnswers,
    );
  }

  factory CreateQuestionModel.fromJson(Map<String, dynamic> json) => _$CreateQuestionModelFromJson(json);
}
