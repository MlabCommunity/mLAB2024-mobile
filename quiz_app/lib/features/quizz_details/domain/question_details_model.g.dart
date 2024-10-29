// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionDetailsModelImpl _$$QuestionDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionDetailsModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => AnswerDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionDetailsModelImplToJson(
        _$QuestionDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'answers': instance.answers,
    };
