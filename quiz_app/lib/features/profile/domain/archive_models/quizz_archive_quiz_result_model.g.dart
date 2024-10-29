// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizz_archive_quiz_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizzArchiveQuizResultModelImpl _$$QuizzArchiveQuizResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizzArchiveQuizResultModelImpl(
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      scorePercentage: (json['scorePercentage'] as num).toDouble(),
    );

Map<String, dynamic> _$$QuizzArchiveQuizResultModelImplToJson(
        _$QuizzArchiveQuizResultModelImpl instance) =>
    <String, dynamic>{
      'totalQuestions': instance.totalQuestions,
      'correctAnswers': instance.correctAnswers,
      'scorePercentage': instance.scorePercentage,
    };
