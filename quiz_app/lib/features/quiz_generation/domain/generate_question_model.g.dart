// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateQuestionModelImpl _$$GenerateQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateQuestionModelImpl(
      title: json['title'] as String,
      generateQuizAnswers: (json['generateQuizAnswers'] as List<dynamic>)
          .map((e) =>
              const AnswerModelConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GenerateQuestionModelImplToJson(
        _$GenerateQuestionModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'generateQuizAnswers': instance.generateQuizAnswers
          .map(const AnswerModelConverter().toJson)
          .toList(),
    };
