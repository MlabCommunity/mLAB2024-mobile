// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerModelImpl _$$AnswerModelImplFromJson(Map<String, dynamic> json) =>
    _$AnswerModelImpl(
      content: json['content'] as String,
      isCorrect: json['isCorrect'] as bool,
    );

Map<String, dynamic> _$$AnswerModelImplToJson(_$AnswerModelImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'isCorrect': instance.isCorrect,
    };
