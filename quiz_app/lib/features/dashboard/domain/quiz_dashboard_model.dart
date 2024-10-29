import 'package:freezed_annotation/freezed_annotation.dart';

import '../../quizz_details/domain/quiz_details_model.dart';

part 'quiz_dashboard_model.g.dart';
part 'quiz_dashboard_model.freezed.dart';

@freezed
class QuizDashboardModel with _$QuizDashboardModel{
  const factory QuizDashboardModel({
    required String id,
    required String title,
    required String description,
    required QuizAvailability availability,
    required QuizStatus status,
    required int totalQuestions,
  }) = _QuizDashboardModel;

  factory QuizDashboardModel.fromJson(Map<String, dynamic> json) =>
      _$QuizDashboardModelFromJson(json);

  factory QuizDashboardModel.fromQuizDetailsModel(QuizDetailsModel quizDetailsModel) {
    return QuizDashboardModel(
      id: quizDetailsModel.id,
      title: quizDetailsModel.title,
      description: quizDetailsModel.description,
      availability: quizDetailsModel.availability,
      status: quizDetailsModel.status,
      totalQuestions: quizDetailsModel.questions.length,
    );
  }
}