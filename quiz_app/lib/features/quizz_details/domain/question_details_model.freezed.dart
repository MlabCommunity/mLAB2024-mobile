// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionDetailsModel _$QuestionDetailsModelFromJson(Map<String, dynamic> json) {
  return _QuestionDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionDetailsModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<AnswerDetailsModel> get answers => throw _privateConstructorUsedError;

  /// Serializes this QuestionDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuestionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuestionDetailsModelCopyWith<QuestionDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDetailsModelCopyWith<$Res> {
  factory $QuestionDetailsModelCopyWith(QuestionDetailsModel value,
          $Res Function(QuestionDetailsModel) then) =
      _$QuestionDetailsModelCopyWithImpl<$Res, QuestionDetailsModel>;
  @useResult
  $Res call({String id, String title, List<AnswerDetailsModel> answers});
}

/// @nodoc
class _$QuestionDetailsModelCopyWithImpl<$Res,
        $Val extends QuestionDetailsModel>
    implements $QuestionDetailsModelCopyWith<$Res> {
  _$QuestionDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuestionDetailsModel
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
              as List<AnswerDetailsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionDetailsModelImplCopyWith<$Res>
    implements $QuestionDetailsModelCopyWith<$Res> {
  factory _$$QuestionDetailsModelImplCopyWith(_$QuestionDetailsModelImpl value,
          $Res Function(_$QuestionDetailsModelImpl) then) =
      __$$QuestionDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, List<AnswerDetailsModel> answers});
}

/// @nodoc
class __$$QuestionDetailsModelImplCopyWithImpl<$Res>
    extends _$QuestionDetailsModelCopyWithImpl<$Res, _$QuestionDetailsModelImpl>
    implements _$$QuestionDetailsModelImplCopyWith<$Res> {
  __$$QuestionDetailsModelImplCopyWithImpl(_$QuestionDetailsModelImpl _value,
      $Res Function(_$QuestionDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuestionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? answers = null,
  }) {
    return _then(_$QuestionDetailsModelImpl(
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
              as List<AnswerDetailsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionDetailsModelImpl implements _QuestionDetailsModel {
  const _$QuestionDetailsModelImpl(
      {required this.id,
      required this.title,
      required final List<AnswerDetailsModel> answers})
      : _answers = answers;

  factory _$QuestionDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionDetailsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<AnswerDetailsModel> _answers;
  @override
  List<AnswerDetailsModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'QuestionDetailsModel(id: $id, title: $title, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_answers));

  /// Create a copy of QuestionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionDetailsModelImplCopyWith<_$QuestionDetailsModelImpl>
      get copyWith =>
          __$$QuestionDetailsModelImplCopyWithImpl<_$QuestionDetailsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _QuestionDetailsModel implements QuestionDetailsModel {
  const factory _QuestionDetailsModel(
          {required final String id,
          required final String title,
          required final List<AnswerDetailsModel> answers}) =
      _$QuestionDetailsModelImpl;

  factory _QuestionDetailsModel.fromJson(Map<String, dynamic> json) =
      _$QuestionDetailsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<AnswerDetailsModel> get answers;

  /// Create a copy of QuestionDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuestionDetailsModelImplCopyWith<_$QuestionDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
