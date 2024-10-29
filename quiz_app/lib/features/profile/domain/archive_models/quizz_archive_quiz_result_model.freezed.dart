// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quizz_archive_quiz_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizzArchiveQuizResultModel _$QuizzArchiveQuizResultModelFromJson(
    Map<String, dynamic> json) {
  return _QuizzArchiveQuizResultModel.fromJson(json);
}

/// @nodoc
mixin _$QuizzArchiveQuizResultModel {
  int get totalQuestions => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;
  double get scorePercentage => throw _privateConstructorUsedError;

  /// Serializes this QuizzArchiveQuizResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizzArchiveQuizResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizzArchiveQuizResultModelCopyWith<QuizzArchiveQuizResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzArchiveQuizResultModelCopyWith<$Res> {
  factory $QuizzArchiveQuizResultModelCopyWith(
          QuizzArchiveQuizResultModel value,
          $Res Function(QuizzArchiveQuizResultModel) then) =
      _$QuizzArchiveQuizResultModelCopyWithImpl<$Res,
          QuizzArchiveQuizResultModel>;
  @useResult
  $Res call({int totalQuestions, int correctAnswers, double scorePercentage});
}

/// @nodoc
class _$QuizzArchiveQuizResultModelCopyWithImpl<$Res,
        $Val extends QuizzArchiveQuizResultModel>
    implements $QuizzArchiveQuizResultModelCopyWith<$Res> {
  _$QuizzArchiveQuizResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizzArchiveQuizResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? scorePercentage = null,
  }) {
    return _then(_value.copyWith(
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      scorePercentage: null == scorePercentage
          ? _value.scorePercentage
          : scorePercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizzArchiveQuizResultModelImplCopyWith<$Res>
    implements $QuizzArchiveQuizResultModelCopyWith<$Res> {
  factory _$$QuizzArchiveQuizResultModelImplCopyWith(
          _$QuizzArchiveQuizResultModelImpl value,
          $Res Function(_$QuizzArchiveQuizResultModelImpl) then) =
      __$$QuizzArchiveQuizResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalQuestions, int correctAnswers, double scorePercentage});
}

/// @nodoc
class __$$QuizzArchiveQuizResultModelImplCopyWithImpl<$Res>
    extends _$QuizzArchiveQuizResultModelCopyWithImpl<$Res,
        _$QuizzArchiveQuizResultModelImpl>
    implements _$$QuizzArchiveQuizResultModelImplCopyWith<$Res> {
  __$$QuizzArchiveQuizResultModelImplCopyWithImpl(
      _$QuizzArchiveQuizResultModelImpl _value,
      $Res Function(_$QuizzArchiveQuizResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizzArchiveQuizResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? scorePercentage = null,
  }) {
    return _then(_$QuizzArchiveQuizResultModelImpl(
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      scorePercentage: null == scorePercentage
          ? _value.scorePercentage
          : scorePercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizzArchiveQuizResultModelImpl
    implements _QuizzArchiveQuizResultModel {
  const _$QuizzArchiveQuizResultModelImpl(
      {required this.totalQuestions,
      required this.correctAnswers,
      required this.scorePercentage});

  factory _$QuizzArchiveQuizResultModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$QuizzArchiveQuizResultModelImplFromJson(json);

  @override
  final int totalQuestions;
  @override
  final int correctAnswers;
  @override
  final double scorePercentage;

  @override
  String toString() {
    return 'QuizzArchiveQuizResultModel(totalQuestions: $totalQuestions, correctAnswers: $correctAnswers, scorePercentage: $scorePercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzArchiveQuizResultModelImpl &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.scorePercentage, scorePercentage) ||
                other.scorePercentage == scorePercentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalQuestions, correctAnswers, scorePercentage);

  /// Create a copy of QuizzArchiveQuizResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizzArchiveQuizResultModelImplCopyWith<_$QuizzArchiveQuizResultModelImpl>
      get copyWith => __$$QuizzArchiveQuizResultModelImplCopyWithImpl<
          _$QuizzArchiveQuizResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizzArchiveQuizResultModelImplToJson(
      this,
    );
  }
}

abstract class _QuizzArchiveQuizResultModel
    implements QuizzArchiveQuizResultModel {
  const factory _QuizzArchiveQuizResultModel(
          {required final int totalQuestions,
          required final int correctAnswers,
          required final double scorePercentage}) =
      _$QuizzArchiveQuizResultModelImpl;

  factory _QuizzArchiveQuizResultModel.fromJson(Map<String, dynamic> json) =
      _$QuizzArchiveQuizResultModelImpl.fromJson;

  @override
  int get totalQuestions;
  @override
  int get correctAnswers;
  @override
  double get scorePercentage;

  /// Create a copy of QuizzArchiveQuizResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizzArchiveQuizResultModelImplCopyWith<_$QuizzArchiveQuizResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
