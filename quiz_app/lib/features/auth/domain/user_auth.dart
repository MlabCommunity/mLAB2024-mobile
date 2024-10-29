import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_auth.freezed.dart';
part 'user_auth.g.dart';

@freezed
class UserAuth with _$UserAuth {
  const factory UserAuth({
    required String email,
    required String password,
  }) = _UserAuth;

  factory UserAuth.fromJson(Map<String, dynamic> json) => _$UserAuthFromJson(json);
}
