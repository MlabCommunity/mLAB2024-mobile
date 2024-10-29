import 'package:freezed_annotation/freezed_annotation.dart';
import 'create_question_model.dart';
import 'generate_quiz_model.dart';

part 'create_quiz_model.g.dart';
part 'create_quiz_model.freezed.dart';

@freezed
class CreateQuizModel with _$CreateQuizModel {
  const factory CreateQuizModel({
    required String title,
    required String description,
    required List<CreateQuestionModel> createQuizQuestions,
  }) = _CreateQuizModel;

  factory CreateQuizModel.fromGenerateQuizModel({
required GenerateQuizModel model
  }) {
    return CreateQuizModel(
      title: model.title,
      description: model.description,
      createQuizQuestions: model.generateQuestions
          .map((question) => CreateQuestionModel.fromGenerateQuestionModel(
                title: question.title,
                generateQuizAnswers: question.answers,
              ))
          .toList(),
    );
  }

  factory CreateQuizModel.fromJson(Map<String, dynamic> json) => _$CreateQuizModelFromJson(json);
}
