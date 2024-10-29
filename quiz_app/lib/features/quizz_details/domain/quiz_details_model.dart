import 'package:freezed_annotation/freezed_annotation.dart';

import 'participants_list_model.dart';
import 'question_details_model.dart';

part 'quiz_details_model.g.dart';
part 'quiz_details_model.freezed.dart';

enum QuizAvailability {
  @JsonValue('Public')
  public,
  @JsonValue('Private')
  private
}

enum QuizStatus {
  @JsonValue('Active')
  active,
  @JsonValue('Inactive')
  inactive
}

extension QuizStatusEx on QuizStatus {
  String get name {
    switch (this) {
      case QuizStatus.active:
        return 'Active';
      case QuizStatus.inactive:
        return 'Inactive';
    }
  }
}

extension QuizAvailabilityEx on QuizAvailability {
  String get name {
    switch (this) {
      case QuizAvailability.public:
        return 'Public';
      case QuizAvailability.private:
        return 'Private';
    }
  }
}

@freezed
class QuizDetailsModel with _$QuizDetailsModel {
  const factory QuizDetailsModel({
    required String id,
    required String title,
    required String description,
    required QuizAvailability availability,
    required String shareLink,
    required QuizStatus status,
    required List<QuestionDetailsModel> questions,
    required ParticipantsListModel participants,
  }) = _QuizDetailsModel;

  factory QuizDetailsModel.fromJson(Map<String, dynamic> json) => _$QuizDetailsModelFromJson(json);
}
