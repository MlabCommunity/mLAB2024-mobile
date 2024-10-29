// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAuth _$UserAuthFromJson(Map<String, dynamic> json) {
  return _UserAuth.fromJson(json);
}

/// @nodoc
mixin _$UserAuth {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this UserAuth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAuthCopyWith<UserAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthCopyWith<$Res> {
  factory $UserAuthCopyWith(UserAuth value, $Res Function(UserAuth) then) =
      _$UserAuthCopyWithImpl<$Res, UserAuth>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$UserAuthCopyWithImpl<$Res, $Val extends UserAuth>
    implements $UserAuthCopyWith<$Res> {
  _$UserAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthImplCopyWith<$Res>
    implements $UserAuthCopyWith<$Res> {
  factory _$$UserAuthImplCopyWith(
          _$UserAuthImpl value, $Res Function(_$UserAuthImpl) then) =
      __$$UserAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserAuthImplCopyWithImpl<$Res>
    extends _$UserAuthCopyWithImpl<$Res, _$UserAuthImpl>
    implements _$$UserAuthImplCopyWith<$Res> {
  __$$UserAuthImplCopyWithImpl(
      _$UserAuthImpl _value, $Res Function(_$UserAuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserAuthImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthImpl with DiagnosticableTreeMixin implements _UserAuth {
  const _$UserAuthImpl({required this.email, required this.password});

  factory _$UserAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAuthImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserAuth(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAuth'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of UserAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthImplCopyWith<_$UserAuthImpl> get copyWith =>
      __$$UserAuthImplCopyWithImpl<_$UserAuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthImplToJson(
      this,
    );
  }
}

abstract class _UserAuth implements UserAuth {
  const factory _UserAuth(
      {required final String email,
      required final String password}) = _$UserAuthImpl;

  factory _UserAuth.fromJson(Map<String, dynamic> json) =
      _$UserAuthImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of UserAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthImplCopyWith<_$UserAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
