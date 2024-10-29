// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quizz_archive_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizzArchiveAnswerModelImpl _$$QuizzArchiveAnswerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizzArchiveAnswerModelImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      isCorrect: json['isCorrect'] as bool,
    );

Map<String, dynamic> _$$QuizzArchiveAnswerModelImplToJson(
        _$QuizzArchiveAnswerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'isCorrect': instance.isCorrect,
    };
