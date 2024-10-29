// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_details_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizDetailsResultModelImpl _$$QuizDetailsResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizDetailsResultModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) =>
              TakeQuizResultQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuizDetailsResultModelImplToJson(
        _$QuizDetailsResultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'questions': instance.questions,
    };
