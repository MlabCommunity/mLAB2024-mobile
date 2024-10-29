import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/server_exception.dart';
import '../../../../core/utils/typedefs.dart';
import '../data_sources/auth_client.dart';
import '../../domain/user_auth.dart';
import '../../domain/token_auth.dart';

part 'auth_repository.g.dart';

abstract class AuthRepository {
  ResultFuture<void> signUp({
    required UserAuth userAuth,
  });
  ResultFuture<TokenAuth> signIn({
    required UserAuth userAuth,
  });
  ResultFuture<TokenAuth> guestSignIn({
    required String guestDisplayName,
  });

  ResultFuture<void> deleteUser();
}

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._authClient);

  final AuthClient _authClient;

  @override
  ResultFuture<void> signUp({
    required UserAuth userAuth,
  }) async {
    try {
      await _authClient.signUp(userAuth.toJson());
      return const Right(null);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<TokenAuth> signIn({
    required UserAuth userAuth,
  }) async {
    try {
      final result = await _authClient.signIn(userAuth.toJson());
      return Right(result);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<TokenAuth> guestSignIn({
    required String guestDisplayName,
  }) async {
    try {
      final result = await _authClient.guestSignIn(Map<String, dynamic>.from({
        'displayName': guestDisplayName,
      }));
      return Right(result);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<void> deleteUser() async {
    try {
      await _authClient.deleteUser();
      return const Right(null);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }
}

@riverpod
AuthRepository authRepository(AuthRepositoryRef ref) => AuthRepositoryImpl(ref.read(authClientProvider));
