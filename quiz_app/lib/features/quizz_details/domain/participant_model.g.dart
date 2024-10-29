// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticipantModelImpl _$$ParticipantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParticipantModelImpl(
      displayName: json['displayName'] as String,
      score: (json['score'] as num?)?.toInt() ?? 0,
      status: json['status'] as String,
      participationDateUtc: json['participationDateUtc'] as String,
    );

Map<String, dynamic> _$$ParticipantModelImplToJson(
        _$ParticipantModelImpl instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'score': instance.score,
      'status': instance.status,
      'participationDateUtc': instance.participationDateUtc,
    };
