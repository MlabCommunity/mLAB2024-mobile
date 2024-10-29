// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_quiz_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatedQuizResult _$CreatedQuizResultFromJson(Map<String, dynamic> json) {
  return _CreatedQuizResult.fromJson(json);
}

/// @nodoc
mixin _$CreatedQuizResult {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this CreatedQuizResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatedQuizResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatedQuizResultCopyWith<CreatedQuizResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedQuizResultCopyWith<$Res> {
  factory $CreatedQuizResultCopyWith(
          CreatedQuizResult value, $Res Function(CreatedQuizResult) then) =
      _$CreatedQuizResultCopyWithImpl<$Res, CreatedQuizResult>;
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class _$CreatedQuizResultCopyWithImpl<$Res, $Val extends CreatedQuizResult>
    implements $CreatedQuizResultCopyWith<$Res> {
  _$CreatedQuizResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatedQuizResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatedQuizResultImplCopyWith<$Res>
    implements $CreatedQuizResultCopyWith<$Res> {
  factory _$$CreatedQuizResultImplCopyWith(_$CreatedQuizResultImpl value,
          $Res Function(_$CreatedQuizResultImpl) then) =
      __$$CreatedQuizResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url});
}

/// @nodoc
class __$$CreatedQuizResultImplCopyWithImpl<$Res>
    extends _$CreatedQuizResultCopyWithImpl<$Res, _$CreatedQuizResultImpl>
    implements _$$CreatedQuizResultImplCopyWith<$Res> {
  __$$CreatedQuizResultImplCopyWithImpl(_$CreatedQuizResultImpl _value,
      $Res Function(_$CreatedQuizResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatedQuizResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
  }) {
    return _then(_$CreatedQuizResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatedQuizResultImpl implements _CreatedQuizResult {
  const _$CreatedQuizResultImpl({required this.id, required this.url});

  factory _$CreatedQuizResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatedQuizResultImplFromJson(json);

  @override
  final String id;
  @override
  final String url;

  @override
  String toString() {
    return 'CreatedQuizResult(id: $id, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedQuizResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url);

  /// Create a copy of CreatedQuizResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedQuizResultImplCopyWith<_$CreatedQuizResultImpl> get copyWith =>
      __$$CreatedQuizResultImplCopyWithImpl<_$CreatedQuizResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatedQuizResultImplToJson(
      this,
    );
  }
}

abstract class _CreatedQuizResult implements CreatedQuizResult {
  const factory _CreatedQuizResult(
      {required final String id,
      required final String url}) = _$CreatedQuizResultImpl;

  factory _CreatedQuizResult.fromJson(Map<String, dynamic> json) =
      _$CreatedQuizResultImpl.fromJson;

  @override
  String get id;
  @override
  String get url;

  /// Create a copy of CreatedQuizResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedQuizResultImplCopyWith<_$CreatedQuizResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
