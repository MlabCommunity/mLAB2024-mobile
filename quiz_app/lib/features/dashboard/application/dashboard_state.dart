import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/quiz_list_model.dart';

part 'dashboard_state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.loaded(QuizListModel quizListModel, int currentPage) = _Loaded;
  const factory DashboardState.error(String message) = _Error;
  const factory DashboardState.guest() = _Guest;
}