// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participants_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticipantsListModelImpl _$$ParticipantsListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParticipantsListModelImpl(
      totalPages: (json['totalPages'] as num).toInt(),
      totalItemsCount: (json['totalItemsCount'] as num).toInt(),
      itemsFrom: (json['itemsFrom'] as num).toInt(),
      itemsTo: (json['itemsTo'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => ParticipantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ParticipantsListModelImplToJson(
        _$ParticipantsListModelImpl instance) =>
    <String, dynamic>{
      'totalPages': instance.totalPages,
      'totalItemsCount': instance.totalItemsCount,
      'itemsFrom': instance.itemsFrom,
      'itemsTo': instance.itemsTo,
      'items': instance.items,
    };
