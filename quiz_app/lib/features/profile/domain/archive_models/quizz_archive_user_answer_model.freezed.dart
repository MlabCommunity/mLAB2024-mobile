// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quizz_archive_user_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizzArchiveUserAnswerModel _$QuizzArchiveUserAnswerModelFromJson(
    Map<String, dynamic> json) {
  return _QuizzArchiveUserAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$QuizzArchiveUserAnswerModel {
  String get questionId => throw _privateConstructorUsedError;
  String get answerId => throw _privateConstructorUsedError;

  /// Serializes this QuizzArchiveUserAnswerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizzArchiveUserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizzArchiveUserAnswerModelCopyWith<QuizzArchiveUserAnswerModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzArchiveUserAnswerModelCopyWith<$Res> {
  factory $QuizzArchiveUserAnswerModelCopyWith(
          QuizzArchiveUserAnswerModel value,
          $Res Function(QuizzArchiveUserAnswerModel) then) =
      _$QuizzArchiveUserAnswerModelCopyWithImpl<$Res,
          QuizzArchiveUserAnswerModel>;
  @useResult
  $Res call({String questionId, String answerId});
}

/// @nodoc
class _$QuizzArchiveUserAnswerModelCopyWithImpl<$Res,
        $Val extends QuizzArchiveUserAnswerModel>
    implements $QuizzArchiveUserAnswerModelCopyWith<$Res> {
  _$QuizzArchiveUserAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizzArchiveUserAnswerModel
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
abstract class _$$QuizzArchiveUserAnswerModelImplCopyWith<$Res>
    implements $QuizzArchiveUserAnswerModelCopyWith<$Res> {
  factory _$$QuizzArchiveUserAnswerModelImplCopyWith(
          _$QuizzArchiveUserAnswerModelImpl value,
          $Res Function(_$QuizzArchiveUserAnswerModelImpl) then) =
      __$$QuizzArchiveUserAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String questionId, String answerId});
}

/// @nodoc
class __$$QuizzArchiveUserAnswerModelImplCopyWithImpl<$Res>
    extends _$QuizzArchiveUserAnswerModelCopyWithImpl<$Res,
        _$QuizzArchiveUserAnswerModelImpl>
    implements _$$QuizzArchiveUserAnswerModelImplCopyWith<$Res> {
  __$$QuizzArchiveUserAnswerModelImplCopyWithImpl(
      _$QuizzArchiveUserAnswerModelImpl _value,
      $Res Function(_$QuizzArchiveUserAnswerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizzArchiveUserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? answerId = null,
  }) {
    return _then(_$QuizzArchiveUserAnswerModelImpl(
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
class _$QuizzArchiveUserAnswerModelImpl
    implements _QuizzArchiveUserAnswerModel {
  const _$QuizzArchiveUserAnswerModelImpl(
      {required this.questionId, required this.answerId});

  factory _$QuizzArchiveUserAnswerModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuizzArchiveUserAnswerModelImplFromJson(json);

  @override
  final String questionId;
  @override
  final String answerId;

  @override
  String toString() {
    return 'QuizzArchiveUserAnswerModel(questionId: $questionId, answerId: $answerId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzArchiveUserAnswerModelImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, questionId, answerId);

  /// Create a copy of QuizzArchiveUserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizzArchiveUserAnswerModelImplCopyWith<_$QuizzArchiveUserAnswerModelImpl>
      get copyWith => __$$QuizzArchiveUserAnswerModelImplCopyWithImpl<
          _$QuizzArchiveUserAnswerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizzArchiveUserAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _QuizzArchiveUserAnswerModel
    implements QuizzArchiveUserAnswerModel {
  const factory _QuizzArchiveUserAnswerModel(
      {required final String questionId,
      required final String answerId}) = _$QuizzArchiveUserAnswerModelImpl;

  factory _QuizzArchiveUserAnswerModel.fromJson(Map<String, dynamic> json) =
      _$QuizzArchiveUserAnswerModelImpl.fromJson;

  @override
  String get questionId;
  @override
  String get answerId;

  /// Create a copy of QuizzArchiveUserAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizzArchiveUserAnswerModelImplCopyWith<_$QuizzArchiveUserAnswerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
