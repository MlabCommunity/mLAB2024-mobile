// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateQuestionModelImpl _$$CreateQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateQuestionModelImpl(
      title: json['title'] as String,
      createQuizAnswers: (json['createQuizAnswers'] as List<dynamic>)
          .map((e) =>
              const AnswerModelConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateQuestionModelImplToJson(
        _$CreateQuestionModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'createQuizAnswers': instance.createQuizAnswers
          .map(const AnswerModelConverter().toJson)
          .toList(),
    };
