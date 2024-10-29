// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateQuizModelImpl _$$CreateQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateQuizModelImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      createQuizQuestions: (json['createQuizQuestions'] as List<dynamic>)
          .map((e) => CreateQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateQuizModelImplToJson(
        _$CreateQuizModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'createQuizQuestions': instance.createQuizQuestions,
    };
