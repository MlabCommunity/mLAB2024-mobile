// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_quiz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubmitQuizModelImpl _$$SubmitQuizModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubmitQuizModelImpl(
      quizParticipationId: json['quizParticipationId'] as String,
      questionsId: (json['questionsId'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      answersId:
          (json['answersId'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SubmitQuizModelImplToJson(
        _$SubmitQuizModelImpl instance) =>
    <String, dynamic>{
      'quizParticipationId': instance.quizParticipationId,
      'questionsId': instance.questionsId,
      'answersId': instance.answersId,
    };
