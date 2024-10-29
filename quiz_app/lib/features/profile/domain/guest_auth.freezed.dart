// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GuestAuth {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this GuestAuth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuestAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuestAuthCopyWith<GuestAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestAuthCopyWith<$Res> {
  factory $GuestAuthCopyWith(GuestAuth value, $Res Function(GuestAuth) then) =
      _$GuestAuthCopyWithImpl<$Res, GuestAuth>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$GuestAuthCopyWithImpl<$Res, $Val extends GuestAuth>
    implements $GuestAuthCopyWith<$Res> {
  _$GuestAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuestAuth
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
abstract class _$$GuestAuthImplCopyWith<$Res>
    implements $GuestAuthCopyWith<$Res> {
  factory _$$GuestAuthImplCopyWith(
          _$GuestAuthImpl value, $Res Function(_$GuestAuthImpl) then) =
      __$$GuestAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$GuestAuthImplCopyWithImpl<$Res>
    extends _$GuestAuthCopyWithImpl<$Res, _$GuestAuthImpl>
    implements _$$GuestAuthImplCopyWith<$Res> {
  __$$GuestAuthImplCopyWithImpl(
      _$GuestAuthImpl _value, $Res Function(_$GuestAuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuestAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$GuestAuthImpl(
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
@JsonSerializable(createFactory: false)
class _$GuestAuthImpl implements _GuestAuth {
  const _$GuestAuthImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'GuestAuth(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestAuthImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of GuestAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestAuthImplCopyWith<_$GuestAuthImpl> get copyWith =>
      __$$GuestAuthImplCopyWithImpl<_$GuestAuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestAuthImplToJson(
      this,
    );
  }
}

abstract class _GuestAuth implements GuestAuth {
  const factory _GuestAuth(
      {required final String email,
      required final String password}) = _$GuestAuthImpl;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of GuestAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuestAuthImplCopyWith<_$GuestAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
