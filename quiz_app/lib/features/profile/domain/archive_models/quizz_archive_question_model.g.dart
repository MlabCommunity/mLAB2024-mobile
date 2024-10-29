// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizz_archive_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizzArchiveQuestionModelImpl _$$QuizzArchiveQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizzArchiveQuestionModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) =>
              QuizzArchiveAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuizzArchiveQuestionModelImplToJson(
        _$QuizzArchiveQuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'answers': instance.answers,
    };
