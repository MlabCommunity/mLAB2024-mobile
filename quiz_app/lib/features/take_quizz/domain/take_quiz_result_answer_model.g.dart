// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'take_quiz_result_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TakeQuizResultAnswerModelImpl _$$TakeQuizResultAnswerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TakeQuizResultAnswerModelImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      isCorrect: json['isCorrect'] as bool,
    );

Map<String, dynamic> _$$TakeQuizResultAnswerModelImplToJson(
        _$TakeQuizResultAnswerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'isCorrect': instance.isCorrect,
    };
