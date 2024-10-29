import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/server_exception.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/guest_auth.dart';
import '../../domain/archive_models/quizz_archive_model.dart';
import '../../domain/user.dart';
import '../data_sources/user_client.dart';

part 'user_repository.g.dart';

abstract class UserRepository {
  ResultFuture<User> getUser();

  ResultFuture<void> updateUser({
    required User user,
  });

  ResultFuture<void> signOut();

  ResultFuture<void> convertGuestToUser(
    GuestAuth user,
  );

  ResultFuture<List<QuizzArchiveModel>> getQuizzArchive();
}

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._userClient);

  final UserClient _userClient;

  @override
  ResultFuture<User> getUser() async {
    try {
      final user = await _userClient.getUser();
      return Right(user);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<void> updateUser({
    required User user,
  }) async {
    try {
      await _userClient.updateUser(user.toJson());
      return const Right(null);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<void> signOut() async {
    try {
      await _userClient.signOut();
      return const Right(null);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<void> convertGuestToUser(
    GuestAuth user,
  ) async {
    try {
      await _userClient.convertGuestToUser(user.toJson());
      return const Right(null);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<List<QuizzArchiveModel>> getQuizzArchive() async {
    try {
      final quizzArchive = await _userClient.getUserQuizzArchive();
      return Right(quizzArchive);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) => UserRepositoryImpl(ref.read(userClientProvider));
