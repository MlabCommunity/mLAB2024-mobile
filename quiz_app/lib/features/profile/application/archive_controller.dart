import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/repositories/user_repository.dart';
import 'archive_state.dart';

part 'archive_controller.g.dart';

@riverpod
class ArchiveController extends _$ArchiveController {
  final _userRepository = userRepositoryProvider;

  @override
  ArchiveState build() {
    return const ArchiveState.loading();
  }

  Future<void> getQuizzArchive() async {
    try {
      final quizzArchive = await ref.read(_userRepository).getQuizzArchive();
      quizzArchive.fold(
        (error) => state = ArchiveState.error(error),
        (quizzArchive) {
          var filteredArchivedModel = quizzArchive.where((element) => element.status == 'Finished').toList();
          filteredArchivedModel.sort((a, b) {
            final aDate = DateFormat('yyyy-MM-ddTHH:mm:ss').parse(a.participationDateUtc);
            final bDate = DateFormat('yyyy-MM-ddTHH:mm:ss').parse(b.participationDateUtc);
            return bDate.compareTo(aDate);
          });
          state = ArchiveState.success(filteredArchivedModel);
        },
      );
    } on Exception catch (e) {
      state = ArchiveState.error(e);
    }
  }
}
