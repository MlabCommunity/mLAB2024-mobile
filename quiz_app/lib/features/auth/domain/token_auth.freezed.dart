// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenAuth _$TokenAuthFromJson(Map<String, dynamic> json) {
  return _TokenAuth.fromJson(json);
}

/// @nodoc
mixin _$TokenAuth {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this TokenAuth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenAuthCopyWith<TokenAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenAuthCopyWith<$Res> {
  factory $TokenAuthCopyWith(TokenAuth value, $Res Function(TokenAuth) then) =
      _$TokenAuthCopyWithImpl<$Res, TokenAuth>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$TokenAuthCopyWithImpl<$Res, $Val extends TokenAuth>
    implements $TokenAuthCopyWith<$Res> {
  _$TokenAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenAuthImplCopyWith<$Res>
    implements $TokenAuthCopyWith<$Res> {
  factory _$$TokenAuthImplCopyWith(
          _$TokenAuthImpl value, $Res Function(_$TokenAuthImpl) then) =
      __$$TokenAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$TokenAuthImplCopyWithImpl<$Res>
    extends _$TokenAuthCopyWithImpl<$Res, _$TokenAuthImpl>
    implements _$$TokenAuthImplCopyWith<$Res> {
  __$$TokenAuthImplCopyWithImpl(
      _$TokenAuthImpl _value, $Res Function(_$TokenAuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$TokenAuthImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenAuthImpl implements _TokenAuth {
  const _$TokenAuthImpl(
      {required this.accessToken, required this.refreshToken});

  factory _$TokenAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenAuthImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'TokenAuth(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenAuthImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of TokenAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenAuthImplCopyWith<_$TokenAuthImpl> get copyWith =>
      __$$TokenAuthImplCopyWithImpl<_$TokenAuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenAuthImplToJson(
      this,
    );
  }
}

abstract class _TokenAuth implements TokenAuth {
  const factory _TokenAuth(
      {required final String accessToken,
      required final String refreshToken}) = _$TokenAuthImpl;

  factory _TokenAuth.fromJson(Map<String, dynamic> json) =
      _$TokenAuthImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;

  /// Create a copy of TokenAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenAuthImplCopyWith<_$TokenAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
