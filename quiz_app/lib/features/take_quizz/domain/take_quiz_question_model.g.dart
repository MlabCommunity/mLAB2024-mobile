// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'take_quiz_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TakeQuizQuestionModelImpl _$$TakeQuizQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TakeQuizQuestionModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => TakeQuizAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TakeQuizQuestionModelImplToJson(
        _$TakeQuizQuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'answers': instance.answers,
    };
