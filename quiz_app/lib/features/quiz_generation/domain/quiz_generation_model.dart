import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_generation_model.freezed.dart';
part 'quiz_generation_model.g.dart';

@freezed
class QuizGenerationModel with _$QuizGenerationModel {
  const factory QuizGenerationModel({
    required String content,
    required int numberOfQuestions,
    required List<String> questionTypes,
  }) = _QuizGenerationModel;

  factory QuizGenerationModel.fromJson(Map<String, dynamic> json) => _$QuizGenerationModelFromJson(json);
}