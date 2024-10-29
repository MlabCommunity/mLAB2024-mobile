// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizz_archive_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizzArchiveModelImpl _$$QuizzArchiveModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizzArchiveModelImpl(
      quizId: json['quizId'] as String,
      quizTitle: json['quizTitle'] as String,
      quizDescription: json['quizDescription'] as String,
      participationDateUtc: json['participationDateUtc'] as String,
      status: json['status'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) =>
              QuizzArchiveQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      userAnswers: (json['userAnswers'] as List<dynamic>)
          .map((e) =>
              QuizzArchiveUserAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      quizResult: json['quizResult'] == null
          ? const QuizzArchiveQuizResultModel(
              totalQuestions: 0, scorePercentage: 0, correctAnswers: 0)
          : QuizzArchiveQuizResultModel.fromJson(
              json['quizResult'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuizzArchiveModelImplToJson(
        _$QuizzArchiveModelImpl instance) =>
    <String, dynamic>{
      'quizId': instance.quizId,
      'quizTitle': instance.quizTitle,
      'quizDescription': instance.quizDescription,
      'participationDateUtc': instance.participationDateUtc,
      'status': instance.status,
      'questions': instance.questions,
      'userAnswers': instance.userAnswers,
      'quizResult': instance.quizResult,
    };
