import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthenticated(bool obscurePassword) = _Initial;
  const factory AuthState.loading(bool obscurePassword) = _Loading;
  const factory AuthState.error(String message) = _Error;
}
