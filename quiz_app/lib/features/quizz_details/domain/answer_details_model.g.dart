// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerDetailsModelImpl _$$AnswerDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerDetailsModelImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      isCorrect: json['isCorrect'] as bool,
    );

Map<String, dynamic> _$$AnswerDetailsModelImplToJson(
        _$AnswerDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'isCorrect': instance.isCorrect,
    };
