// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_participation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizParticipationModelImpl _$$QuizParticipationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizParticipationModelImpl(
      id: json['id'] as String,
      participationDate: const DateTimeJsonConverter()
          .fromJson(json['participationDate'] as String),
      quizResponse: QuizResponseModel.fromJson(
          json['quizResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuizParticipationModelImplToJson(
        _$QuizParticipationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'participationDate':
          const DateTimeJsonConverter().toJson(instance.participationDate),
      'quizResponse': instance.quizResponse,
    };
