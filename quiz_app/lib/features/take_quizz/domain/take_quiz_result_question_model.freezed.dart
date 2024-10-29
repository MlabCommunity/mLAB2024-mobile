// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'take_quiz_result_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TakeQuizResultQuestionModel _$TakeQuizResultQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _TakeQuizResultQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$TakeQuizResultQuestionModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<TakeQuizResultAnswerModel> get answers =>
      throw _privateConstructorUsedError;

  /// Serializes this TakeQuizResultQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TakeQuizResultQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TakeQuizResultQuestionModelCopyWith<TakeQuizResultQuestionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakeQuizResultQuestionModelCopyWith<$Res> {
  factory $TakeQuizResultQuestionModelCopyWith(
          TakeQuizResultQuestionModel value,
          $Res Function(TakeQuizResultQuestionModel) then) =
      _$TakeQuizResultQuestionModelCopyWithImpl<$Res,
          TakeQuizResultQuestionModel>;
  @useResult
  $Res call({String id, String title, List<TakeQuizResultAnswerModel> answers});
}

/// @nodoc
class _$TakeQuizResultQuestionModelCopyWithImpl<$Res,
        $Val extends TakeQuizResultQuestionModel>
    implements $TakeQuizResultQuestionModelCopyWith<$Res> {
  _$TakeQuizResultQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TakeQuizResultQuestionModel
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
              as List<TakeQuizResultAnswerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TakeQuizResultQuestionModelImplCopyWith<$Res>
    implements $TakeQuizResultQuestionModelCopyWith<$Res> {
  factory _$$TakeQuizResultQuestionModelImplCopyWith(
          _$TakeQuizResultQuestionModelImpl value,
          $Res Function(_$TakeQuizResultQuestionModelImpl) then) =
      __$$TakeQuizResultQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, List<TakeQuizResultAnswerModel> answers});
}

/// @nodoc
class __$$TakeQuizResultQuestionModelImplCopyWithImpl<$Res>
    extends _$TakeQuizResultQuestionModelCopyWithImpl<$Res,
        _$TakeQuizResultQuestionModelImpl>
    implements _$$TakeQuizResultQuestionModelImplCopyWith<$Res> {
  __$$TakeQuizResultQuestionModelImplCopyWithImpl(
      _$TakeQuizResultQuestionModelImpl _value,
      $Res Function(_$TakeQuizResultQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TakeQuizResultQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? answers = null,
  }) {
    return _then(_$TakeQuizResultQuestionModelImpl(
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
              as List<TakeQuizResultAnswerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TakeQuizResultQuestionModelImpl
    implements _TakeQuizResultQuestionModel {
  const _$TakeQuizResultQuestionModelImpl(
      {required this.id,
      required this.title,
      required final List<TakeQuizResultAnswerModel> answers})
      : _answers = answers;

  factory _$TakeQuizResultQuestionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TakeQuizResultQuestionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<TakeQuizResultAnswerModel> _answers;
  @override
  List<TakeQuizResultAnswerModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'TakeQuizResultQuestionModel(id: $id, title: $title, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakeQuizResultQuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_answers));

  /// Create a copy of TakeQuizResultQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TakeQuizResultQuestionModelImplCopyWith<_$TakeQuizResultQuestionModelImpl>
      get copyWith => __$$TakeQuizResultQuestionModelImplCopyWithImpl<
          _$TakeQuizResultQuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TakeQuizResultQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _TakeQuizResultQuestionModel
    implements TakeQuizResultQuestionModel {
  const factory _TakeQuizResultQuestionModel(
          {required final String id,
          required final String title,
          required final List<TakeQuizResultAnswerModel> answers}) =
      _$TakeQuizResultQuestionModelImpl;

  factory _TakeQuizResultQuestionModel.fromJson(Map<String, dynamic> json) =
      _$TakeQuizResultQuestionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<TakeQuizResultAnswerModel> get answers;

  /// Create a copy of TakeQuizResultQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TakeQuizResultQuestionModelImplCopyWith<_$TakeQuizResultQuestionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
