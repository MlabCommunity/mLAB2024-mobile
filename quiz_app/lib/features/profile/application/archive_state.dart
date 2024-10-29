import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/archive_models/quizz_archive_model.dart';

part 'archive_state.freezed.dart';

@freezed
class ArchiveState with _$ArchiveState {
  const factory ArchiveState.loading() = _Loading;
  const factory ArchiveState.success(List<QuizzArchiveModel> quizzArchive) = _Success;
  const factory ArchiveState.error(Exception message) = _Error;
}
