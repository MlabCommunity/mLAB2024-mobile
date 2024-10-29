import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/models/user_type.dart';
import '../../../core/services/app_router.dart';
import '../../../core/services/session_provider.dart';
import '../data/repositories/user_repository.dart';
import '../domain/user.dart';
import 'user_state.dart';

part 'user_controller.g.dart';

@riverpod
class UserController extends _$UserController {
  final _userRepository = userRepositoryProvider;
  final _sessionRepository = sessionProvider;

  @override
  UserState build() {
    return const UserState.loading();
  }

  Future<void> getUser() async {
    try {
      final user = await ref.read(_userRepository).getUser();
      return user.fold((error) => state = UserState.error(error), (user) async {
        final session = ref.read(_sessionRepository);
        if(await session.getUserType() == UserType.guest) {
          state = UserState.guest(user);
          return;
        }
        state = UserState.success(user);
      });
    } on Exception catch (e) {
      state = UserState.error(e);
    }
  }

  Future<bool> updateUser({required User user}) async {
    state = UserState.success(user, isUsernameUpdating: true);
    try {
      await ref.read(_userRepository).updateUser(user: user);
      await getUser();
      state = UserState.success(user);
      return true;
    } on Exception catch (e) {
      state = UserState.error(e);
      return false;
    }
  }

  Future<void> signOut() async {
    state = const UserState.loading();
    final result = await ref.read(_userRepository).signOut();
    final router = ref.read(appRouterProvider);
    result.fold(
      (error) => state = UserState.error(error),
      (_) async {
        await ref.read(sessionProvider).deleteTokens();
        router.replaceAll([const SignInRoute()]);
      },
    );
  }
}
