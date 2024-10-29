// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_dashboard_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizDashboardModelImpl _$$QuizDashboardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizDashboardModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      availability:
          $enumDecode(_$QuizAvailabilityEnumMap, json['availability']),
      status: $enumDecode(_$QuizStatusEnumMap, json['status']),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
    );

Map<String, dynamic> _$$QuizDashboardModelImplToJson(
        _$QuizDashboardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'availability': _$QuizAvailabilityEnumMap[instance.availability]!,
      'status': _$QuizStatusEnumMap[instance.status]!,
      'totalQuestions': instance.totalQuestions,
    };

const _$QuizAvailabilityEnumMap = {
  QuizAvailability.public: 'Public',
  QuizAvailability.private: 'Private',
};

const _$QuizStatusEnumMap = {
  QuizStatus.active: 'Active',
  QuizStatus.inactive: 'Inactive',
};
