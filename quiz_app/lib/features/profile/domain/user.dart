// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(includeToJson: false) @Default('') String id,
    @JsonKey(includeToJson: false) @Default('') String email,
    required String displayName,
    @Default('https://s3.amazonaws.com/37assets/svn/765-default-avatar.png') String imageUrl,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
