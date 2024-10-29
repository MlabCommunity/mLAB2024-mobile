import 'package:freezed_annotation/freezed_annotation.dart';

import 'participant_model.dart';

part 'participants_list_model.freezed.dart';
part 'participants_list_model.g.dart';

@freezed
class ParticipantsListModel with _$ParticipantsListModel {
  const factory ParticipantsListModel({
    required int totalPages,
    required int totalItemsCount,
    required int itemsFrom,
    required int itemsTo,
    required List<ParticipantModel> items,
  }) = _ParticipantsListModel;

  factory ParticipantsListModel.fromJson(Map<String, dynamic> json) =>
      _$ParticipantsListModelFromJson(json);
}