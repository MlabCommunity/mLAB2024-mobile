import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quiz_app/features/auth/domain/user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success() = _Success;
  const factory AuthState.error(String message) = _Error;
}