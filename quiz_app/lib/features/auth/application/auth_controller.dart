import 'dart:core';

import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/errors/server_exception.dart';
import '../../../core/models/user_type.dart';
import '../../../core/services/app_router.dart';
import '../../../core/services/session_provider.dart';
import '../../profile/data/repositories/user_repository.dart';
import '../../profile/domain/guest_auth.dart';
import '../data/repositories/auth_repository.dart';
import '../domain/user_auth.dart';
import 'auth_state.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  final _authRepostiory = authRepositoryProvider;
  final _sessionProvider = sessionProvider;
  final _profileRepository = userRepositoryProvider;

  @override
  AuthState build() {
    return const AuthState.unauthenticated(true);
  }

  Future<bool> signUp({required String email, required String password}) async {
    final obscurePassword = state.maybeWhen(
      unauthenticated: (obscurePassword) => obscurePassword,
      orElse: () => true,
    );
    state = AuthState.loading(obscurePassword);

    Either<ServerException, void> result;

    if (await ref.read(_sessionProvider).getUserType() == UserType.guest) {
      final guestAuth = GuestAuth(email: email, password: password);
      result = await ref.read(_profileRepository).convertGuestToUser(guestAuth);
    } else {
      final userAuth = UserAuth(email: email, password: password);
      result = await ref.read(_authRepostiory).signUp(userAuth: userAuth);
    }

    return result.fold((error) {
      state = AuthState.unauthenticated(obscurePassword);
      return false;
    }, (_) {
      state = AuthState.unauthenticated(obscurePassword);
      return true;
    });
  }

  Future<bool> signIn({required String email, required String password}) async {
    final userAuth = UserAuth(email: email, password: password);
    final obscurePassword = state.maybeWhen(
      unauthenticated: (obscurePassword) => obscurePassword,
      orElse: () => true,
    );
    state = AuthState.loading(obscurePassword);
    final result = await ref.read(_authRepostiory).signIn(userAuth: userAuth);
    return result.fold(
      (error) {
        state = AuthState.unauthenticated(obscurePassword);
        return false;
      },
      (tokens) async {
        await ref.read(sessionProvider).saveTokens(
              accessToken: tokens.accessToken,
              refreshToken: tokens.refreshToken,
            );
        return true;
      },
    );
  }

  Future<void> deleteUser() async {
    final result = await ref.read(_authRepostiory).deleteUser();
    result.fold(
      (error) => AuthState.error(error.message),
      (_) async {
        await ref.read(_sessionProvider).deleteTokens();
        ref.read(appRouterProvider).replaceAll([const WelcomeRoute()]);
      },
    );
  }

  Future<bool> guestSignIn({required String username}) async {
    final result = await ref.read(_authRepostiory).guestSignIn(guestDisplayName: username);
    return result.fold(
      (error) {
        return false;
      },
      (tokens) async {
        await ref.read(sessionProvider).saveTokens(
              accessToken: tokens.accessToken,
              refreshToken: tokens.refreshToken,
            );
        return true;
      },
    );
  }

  void togglePasswordVisibility() {
    state.maybeWhen(
      unauthenticated: (obscurePassword) {
        state = AuthState.unauthenticated(!obscurePassword);
      },
      orElse: () {},
    );
  }
}
