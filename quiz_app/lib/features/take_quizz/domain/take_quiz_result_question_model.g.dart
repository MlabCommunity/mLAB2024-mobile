// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'take_quiz_result_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TakeQuizResultQuestionModelImpl _$$TakeQuizResultQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TakeQuizResultQuestionModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) =>
              TakeQuizResultAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TakeQuizResultQuestionModelImplToJson(
        _$TakeQuizResultQuestionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'answers': instance.answers,
    };
