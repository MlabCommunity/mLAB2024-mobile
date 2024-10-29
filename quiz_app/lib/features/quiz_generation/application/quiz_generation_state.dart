import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/created_quiz_result.dart';
import '../domain/generate_quiz_model.dart';
import '../domain/quiz_request_model.dart';
part 'quiz_generation_state.freezed.dart';

@freezed
class QuizGenerationState with _$QuizGenerationState {
  const factory QuizGenerationState.generating(QuizRequestModel request) = _Generating;
  const factory QuizGenerationState.generated(GenerateQuizModel quiz) = _Generated;
  const factory QuizGenerationState.error(String message) = _Error;
  const factory QuizGenerationState.created(CreatedQuizResult quizResult) = _Initial;
}
