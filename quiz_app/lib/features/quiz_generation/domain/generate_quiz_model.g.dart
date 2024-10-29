// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenerateQuizModelImpl _$$GenerateQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GenerateQuizModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      generateQuestions: (json['generateQuestions'] as List<dynamic>)
          .map((e) => const QuestionModelConverter()
              .fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GenerateQuizModelImplToJson(
        _$GenerateQuizModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'generateQuestions': instance.generateQuestions
          .map(const QuestionModelConverter().toJson)
          .toList(),
    };
