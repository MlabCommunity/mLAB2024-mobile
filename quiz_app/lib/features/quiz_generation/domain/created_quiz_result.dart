import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_quiz_result.freezed.dart';
part 'created_quiz_result.g.dart';

@freezed
class CreatedQuizResult with _$CreatedQuizResult {
  const factory CreatedQuizResult({
    required String id,
    required String url,
  }) = _CreatedQuizResult;

  factory CreatedQuizResult.fromJson(Map<String, dynamic> json) => _$CreatedQuizResultFromJson(json);
}
