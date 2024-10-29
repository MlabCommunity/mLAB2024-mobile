// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizDetailsModelImpl _$$QuizDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizDetailsModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      availability:
          $enumDecode(_$QuizAvailabilityEnumMap, json['availability']),
      shareLink: json['shareLink'] as String,
      status: $enumDecode(_$QuizStatusEnumMap, json['status']),
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      participants: ParticipantsListModel.fromJson(
          json['participants'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuizDetailsModelImplToJson(
        _$QuizDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'availability': _$QuizAvailabilityEnumMap[instance.availability]!,
      'shareLink': instance.shareLink,
      'status': _$QuizStatusEnumMap[instance.status]!,
      'questions': instance.questions,
      'participants': instance.participants,
    };

const _$QuizAvailabilityEnumMap = {
  QuizAvailability.public: 'Public',
  QuizAvailability.private: 'Private',
};

const _$QuizStatusEnumMap = {
  QuizStatus.active: 'Active',
  QuizStatus.inactive: 'Inactive',
};
