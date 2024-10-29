// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewQuestionModelImpl _$$NewQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewQuestionModelImpl(
      title: json['title'] as String,
      createAnswers: (json['createAnswers'] as List<dynamic>)
          .map((e) =>
              const AnswerModelConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
      quizID: json['quizID'] as String,
    );

Map<String, dynamic> _$$NewQuestionModelImplToJson(
        _$NewQuestionModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'createAnswers': instance.createAnswers
          .map(const AnswerModelConverter().toJson)
          .toList(),
      'quizID': instance.quizID,
    };
