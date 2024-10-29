// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizResultModelImpl _$$QuizResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizResultModelImpl(
      quizParticipationId: json['quizParticipationId'] as String,
      quizDetails: QuizDetailsResultModel.fromJson(
          json['quizDetails'] as Map<String, dynamic>),
      userAnswers: (json['userAnswers'] as List<dynamic>)
          .map((e) => UserAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      scorePercentage: (json['scorePercentage'] as num).toDouble(),
    );

Map<String, dynamic> _$$QuizResultModelImplToJson(
        _$QuizResultModelImpl instance) =>
    <String, dynamic>{
      'quizParticipationId': instance.quizParticipationId,
      'quizDetails': instance.quizDetails,
      'userAnswers': instance.userAnswers,
      'totalQuestions': instance.totalQuestions,
      'correctAnswers': instance.correctAnswers,
      'scorePercentage': instance.scorePercentage,
    };
