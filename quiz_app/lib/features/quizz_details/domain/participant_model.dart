import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_model.freezed.dart';
part 'participant_model.g.dart';

@freezed
class ParticipantModel with _$ParticipantModel {
  const factory ParticipantModel({
    required String displayName,
    @Default(0)
    int score,
    required String status,
    required String participationDateUtc,
  }) = _ParticipantModel;

  factory ParticipantModel.fromJson(Map<String, dynamic> json) =>
      _$ParticipantModelFromJson(json);
}