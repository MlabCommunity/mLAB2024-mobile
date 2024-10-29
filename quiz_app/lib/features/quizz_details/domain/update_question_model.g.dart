// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateQuestionModelImpl _$$UpdateQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateQuestionModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      updateAnswers: (json['updateAnswers'] as List<dynamic>)
          .map((e) =>
              const AnswerModelConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      quizID: json['quizID'] as String,
    );

Map<String, dynamic> _$$UpdateQuestionModelImplToJson(
        _$UpdateQuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'updateAnswers': instance.updateAnswers
          .map(const AnswerModelConverter().toJson)
          .toList(),
      'quizID': instance.quizID,
    };
