import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_answer_model.freezed.dart';
part 'user_answer_model.g.dart';

@freezed
class UserAnswerModel with _$UserAnswerModel {
  const factory UserAnswerModel({
    required String questionId,
    required String answerId,
  }) = _UserAnswerModel;

  factory UserAnswerModel.fromJson(Map<String, dynamic> json) => _$UserAnswerModelFromJson(json);
}
