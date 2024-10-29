// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quizz_archive_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizzArchiveQuestionModel _$QuizzArchiveQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _QuizzArchiveQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuizzArchiveQuestionModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<QuizzArchiveAnswerModel> get answers =>
      throw _privateConstructorUsedError;

  /// Serializes this QuizzArchiveQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizzArchiveQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizzArchiveQuestionModelCopyWith<QuizzArchiveQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzArchiveQuestionModelCopyWith<$Res> {
  factory $QuizzArchiveQuestionModelCopyWith(QuizzArchiveQuestionModel value,
          $Res Function(QuizzArchiveQuestionModel) then) =
      _$QuizzArchiveQuestionModelCopyWithImpl<$Res, QuizzArchiveQuestionModel>;
  @useResult
  $Res call({String id, String title, List<QuizzArchiveAnswerModel> answers});
}

/// @nodoc
class _$QuizzArchiveQuestionModelCopyWithImpl<$Res,
        $Val extends QuizzArchiveQuestionModel>
    implements $QuizzArchiveQuestionModelCopyWith<$Res> {
  _$QuizzArchiveQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizzArchiveQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? answers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<QuizzArchiveAnswerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizzArchiveQuestionModelImplCopyWith<$Res>
    implements $QuizzArchiveQuestionModelCopyWith<$Res> {
  factory _$$QuizzArchiveQuestionModelImplCopyWith(
          _$QuizzArchiveQuestionModelImpl value,
          $Res Function(_$QuizzArchiveQuestionModelImpl) then) =
      __$$QuizzArchiveQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, List<QuizzArchiveAnswerModel> answers});
}

/// @nodoc
class __$$QuizzArchiveQuestionModelImplCopyWithImpl<$Res>
    extends _$QuizzArchiveQuestionModelCopyWithImpl<$Res,
        _$QuizzArchiveQuestionModelImpl>
    implements _$$QuizzArchiveQuestionModelImplCopyWith<$Res> {
  __$$QuizzArchiveQuestionModelImplCopyWithImpl(
      _$QuizzArchiveQuestionModelImpl _value,
      $Res Function(_$QuizzArchiveQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizzArchiveQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? answers = null,
  }) {
    return _then(_$QuizzArchiveQuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<QuizzArchiveAnswerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizzArchiveQuestionModelImpl implements _QuizzArchiveQuestionModel {
  const _$QuizzArchiveQuestionModelImpl(
      {required this.id,
      required this.title,
      required final List<QuizzArchiveAnswerModel> answers})
      : _answers = answers;

  factory _$QuizzArchiveQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizzArchiveQuestionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<QuizzArchiveAnswerModel> _answers;
  @override
  List<QuizzArchiveAnswerModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'QuizzArchiveQuestionModel(id: $id, title: $title, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzArchiveQuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_answers));

  /// Create a copy of QuizzArchiveQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizzArchiveQuestionModelImplCopyWith<_$QuizzArchiveQuestionModelImpl>
      get copyWith => __$$QuizzArchiveQuestionModelImplCopyWithImpl<
          _$QuizzArchiveQuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizzArchiveQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _QuizzArchiveQuestionModel implements QuizzArchiveQuestionModel {
  const factory _QuizzArchiveQuestionModel(
          {required final String id,
          required final String title,
          required final List<QuizzArchiveAnswerModel> answers}) =
      _$QuizzArchiveQuestionModelImpl;

  factory _QuizzArchiveQuestionModel.fromJson(Map<String, dynamic> json) =
      _$QuizzArchiveQuestionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<QuizzArchiveAnswerModel> get answers;

  /// Create a copy of QuizzArchiveQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizzArchiveQuestionModelImplCopyWith<_$QuizzArchiveQuestionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
