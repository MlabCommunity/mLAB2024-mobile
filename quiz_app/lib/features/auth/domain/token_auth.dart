import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_auth.freezed.dart';
part 'token_auth.g.dart';

@freezed
class TokenAuth with _$TokenAuth{
  const factory TokenAuth({
    required String accessToken,
    required String refreshToken,
  }) = _TokenAuth;

  factory TokenAuth.fromJson(Map<String, dynamic> json) => _$TokenAuthFromJson(json);
}