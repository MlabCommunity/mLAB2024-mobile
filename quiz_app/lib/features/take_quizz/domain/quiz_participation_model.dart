import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/date_time_json_converter.dart';
import 'quiz_response_model.dart';

part 'quiz_participation_model.freezed.dart';
part 'quiz_participation_model.g.dart';

@freezed
class QuizParticipationModel with _$QuizParticipationModel {
  const factory QuizParticipationModel({
    required String id,
    @DateTimeJsonConverter() required DateTime participationDate,
    required QuizResponseModel quizResponse,
  }) = _QuizParticipationModel;

  factory QuizParticipationModel.fromJson(Map<String, dynamic> json) => _$QuizParticipationModelFromJson(json);
}
