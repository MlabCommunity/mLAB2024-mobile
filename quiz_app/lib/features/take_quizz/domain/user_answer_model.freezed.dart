// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAnswerModel _$UserAnswerModelFromJson(Map<String, dynamic> json) {
  return _UserAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$UserAnswerModel {
  String get questionId => throw _privateConstructorUsedError;
  String get answerId => throw _privateConstructorUsedError;

  /// Serializes this UserAnswerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAnswerModelCopyWith<UserAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAnswerModelCopyWith<$Res> {
  factory $UserAnswerModelCopyWith(
          UserAnswerModel value, $Res Function(UserAnswerModel) then) =
      _$UserAnswerModelCopyWithImpl<$Res, UserAnswerModel>;
  @useResult
  $Res call({String questionId, String answerId});
}

/// @nodoc
class _$UserAnswerModelCopyWithImpl<$Res, $Val extends UserAnswerModel>
    implements $UserAnswerModelCopyWith<$Res> {
  _$UserAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answerId = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      answerId: null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAnswerModelImplCopyWith<$Res>
    implements $UserAnswerModelCopyWith<$Res> {
  factory _$$UserAnswerModelImplCopyWith(_$UserAnswerModelImpl value,
          $Res Function(_$UserAnswerModelImpl) then) =
      __$$UserAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String questionId, String answerId});
}

/// @nodoc
class __$$UserAnswerModelImplCopyWithImpl<$Res>
    extends _$UserAnswerModelCopyWithImpl<$Res, _$UserAnswerModelImpl>
    implements _$$UserAnswerModelImplCopyWith<$Res> {
  __$$UserAnswerModelImplCopyWithImpl(
      _$UserAnswerModelImpl _value, $Res Function(_$UserAnswerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answerId = null,
  }) {
    return _then(_$UserAnswerModelImpl(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      answerId: null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAnswerModelImpl implements _UserAnswerModel {
  const _$UserAnswerModelImpl(
      {required this.questionId, required this.answerId});

  factory _$UserAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAnswerModelImplFromJson(json);

  @override
  final String questionId;
  @override
  final String answerId;

  @override
  String toString() {
    return 'UserAnswerModel(questionId: $questionId, answerId: $answerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAnswerModelImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, answerId);

  /// Create a copy of UserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAnswerModelImplCopyWith<_$UserAnswerModelImpl> get copyWith =>
      __$$UserAnswerModelImplCopyWithImpl<_$UserAnswerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _UserAnswerModel implements UserAnswerModel {
  const factory _UserAnswerModel(
      {required final String questionId,
      required final String answerId}) = _$UserAnswerModelImpl;

  factory _UserAnswerModel.fromJson(Map<String, dynamic> json) =
      _$UserAnswerModelImpl.fromJson;

  @override
  String get questionId;
  @override
  String get answerId;

  /// Create a copy of UserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAnswerModelImplCopyWith<_$UserAnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
