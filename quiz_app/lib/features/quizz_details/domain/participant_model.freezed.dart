// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParticipantModel _$ParticipantModelFromJson(Map<String, dynamic> json) {
  return _ParticipantModel.fromJson(json);
}

/// @nodoc
mixin _$ParticipantModel {
  String get displayName => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get participationDateUtc => throw _privateConstructorUsedError;

  /// Serializes this ParticipantModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParticipantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantModelCopyWith<ParticipantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantModelCopyWith<$Res> {
  factory $ParticipantModelCopyWith(
          ParticipantModel value, $Res Function(ParticipantModel) then) =
      _$ParticipantModelCopyWithImpl<$Res, ParticipantModel>;
  @useResult
  $Res call(
      {String displayName,
      int score,
      String status,
      String participationDateUtc});
}

/// @nodoc
class _$ParticipantModelCopyWithImpl<$Res, $Val extends ParticipantModel>
    implements $ParticipantModelCopyWith<$Res> {
  _$ParticipantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? score = null,
    Object? status = null,
    Object? participationDateUtc = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      participationDateUtc: null == participationDateUtc
          ? _value.participationDateUtc
          : participationDateUtc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipantModelImplCopyWith<$Res>
    implements $ParticipantModelCopyWith<$Res> {
  factory _$$ParticipantModelImplCopyWith(_$ParticipantModelImpl value,
          $Res Function(_$ParticipantModelImpl) then) =
      __$$ParticipantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String displayName,
      int score,
      String status,
      String participationDateUtc});
}

/// @nodoc
class __$$ParticipantModelImplCopyWithImpl<$Res>
    extends _$ParticipantModelCopyWithImpl<$Res, _$ParticipantModelImpl>
    implements _$$ParticipantModelImplCopyWith<$Res> {
  __$$ParticipantModelImplCopyWithImpl(_$ParticipantModelImpl _value,
      $Res Function(_$ParticipantModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = null,
    Object? score = null,
    Object? status = null,
    Object? participationDateUtc = null,
  }) {
    return _then(_$ParticipantModelImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      participationDateUtc: null == participationDateUtc
          ? _value.participationDateUtc
          : participationDateUtc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParticipantModelImpl implements _ParticipantModel {
  const _$ParticipantModelImpl(
      {required this.displayName,
      this.score = 0,
      required this.status,
      required this.participationDateUtc});

  factory _$ParticipantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantModelImplFromJson(json);

  @override
  final String displayName;
  @override
  @JsonKey()
  final int score;
  @override
  final String status;
  @override
  final String participationDateUtc;

  @override
  String toString() {
    return 'ParticipantModel(displayName: $displayName, score: $score, status: $status, participationDateUtc: $participationDateUtc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantModelImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.participationDateUtc, participationDateUtc) ||
                other.participationDateUtc == participationDateUtc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, displayName, score, status, participationDateUtc);

  /// Create a copy of ParticipantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantModelImplCopyWith<_$ParticipantModelImpl> get copyWith =>
      __$$ParticipantModelImplCopyWithImpl<_$ParticipantModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantModelImplToJson(
      this,
    );
  }
}

abstract class _ParticipantModel implements ParticipantModel {
  const factory _ParticipantModel(
      {required final String displayName,
      final int score,
      required final String status,
      required final String participationDateUtc}) = _$ParticipantModelImpl;

  factory _ParticipantModel.fromJson(Map<String, dynamic> json) =
      _$ParticipantModelImpl.fromJson;

  @override
  String get displayName;
  @override
  int get score;
  @override
  String get status;
  @override
  String get participationDateUtc;

  /// Create a copy of ParticipantModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantModelImplCopyWith<_$ParticipantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
