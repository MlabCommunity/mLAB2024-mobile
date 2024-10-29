import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/quiz_details_model.dart';

part 'quiz_details_state.freezed.dart';

@freezed
class QuizDetailsState with _$QuizDetailsState {
  const factory QuizDetailsState.loading() = _Loading;
  const factory QuizDetailsState.loaded(QuizDetailsModel quizDetails, bool answersVisible, int pageNumber) = _Loaded;
  const factory QuizDetailsState.error(String message) = _Error;
}