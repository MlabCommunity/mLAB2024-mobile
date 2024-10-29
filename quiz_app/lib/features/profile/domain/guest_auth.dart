import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_auth.freezed.dart';
part 'guest_auth.g.dart';

@Freezed(fromJson: false, toJson: true)
class GuestAuth with _$GuestAuth {
  const factory GuestAuth({
    required String email,
    required String password,
  }) = _GuestAuth;
}