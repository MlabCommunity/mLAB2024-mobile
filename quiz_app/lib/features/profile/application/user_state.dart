import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _Loading;
  const factory UserState.success(
    User user, {
    @Default(false) bool isUsernameUpdating,
  }) = _Success;
  const factory UserState.error(Exception message) = _Error;
  const factory UserState.guest(User user) = _Guest;
}
