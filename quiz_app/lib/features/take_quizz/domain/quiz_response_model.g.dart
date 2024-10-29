// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizResponseModelImpl _$$QuizResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizResponseModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => TakeQuizQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuizResponseModelImplToJson(
        _$QuizResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'questions': instance.questions,
    };
