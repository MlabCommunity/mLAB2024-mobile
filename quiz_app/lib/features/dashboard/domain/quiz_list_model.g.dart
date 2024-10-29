// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizListModelImpl _$$QuizListModelImplFromJson(Map<String, dynamic> json) =>
    _$QuizListModelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => QuizDashboardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalItemsCount: (json['totalItemsCount'] as num).toInt(),
      itemsFrom: (json['itemsFrom'] as num).toInt(),
      itemsTo: (json['itemsTo'] as num).toInt(),
    );

Map<String, dynamic> _$$QuizListModelImplToJson(_$QuizListModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalPages': instance.totalPages,
      'totalItemsCount': instance.totalItemsCount,
      'itemsFrom': instance.itemsFrom,
      'itemsTo': instance.itemsTo,
    };
