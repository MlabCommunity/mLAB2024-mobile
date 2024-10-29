// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'take_quiz_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TakeQuizQuestionModel _$TakeQuizQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _TakeQuizQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$TakeQuizQuestionModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<TakeQuizAnswerModel> get answers => throw _privateConstructorUsedError;

  /// Serializes this TakeQuizQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TakeQuizQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TakeQuizQuestionModelCopyWith<TakeQuizQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakeQuizQuestionModelCopyWith<$Res> {
  factory $TakeQuizQuestionModelCopyWith(TakeQuizQuestionModel value,
          $Res Function(TakeQuizQuestionModel) then) =
      _$TakeQuizQuestionModelCopyWithImpl<$Res, TakeQuizQuestionModel>;
  @useResult
  $Res call({String id, String title, List<TakeQuizAnswerModel> answers});
}

/// @nodoc
class _$TakeQuizQuestionModelCopyWithImpl<$Res,
        $Val extends TakeQuizQuestionModel>
    implements $TakeQuizQuestionModelCopyWith<$Res> {
  _$TakeQuizQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TakeQuizQuestionModel
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
              as List<TakeQuizAnswerModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TakeQuizQuestionModelImplCopyWith<$Res>
    implements $TakeQuizQuestionModelCopyWith<$Res> {
  factory _$$TakeQuizQuestionModelImplCopyWith(
          _$TakeQuizQuestionModelImpl value,
          $Res Function(_$TakeQuizQuestionModelImpl) then) =
      __$$TakeQuizQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, List<TakeQuizAnswerModel> answers});
}

/// @nodoc
class __$$TakeQuizQuestionModelImplCopyWithImpl<$Res>
    extends _$TakeQuizQuestionModelCopyWithImpl<$Res,
        _$TakeQuizQuestionModelImpl>
    implements _$$TakeQuizQuestionModelImplCopyWith<$Res> {
  __$$TakeQuizQuestionModelImplCopyWithImpl(_$TakeQuizQuestionModelImpl _value,
      $Res Function(_$TakeQuizQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TakeQuizQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? answers = null,
  }) {
    return _then(_$TakeQuizQuestionModelImpl(
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
              as List<TakeQuizAnswerModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TakeQuizQuestionModelImpl implements _TakeQuizQuestionModel {
  const _$TakeQuizQuestionModelImpl(
      {required this.id,
      required this.title,
      required final List<TakeQuizAnswerModel> answers})
      : _answers = answers;

  factory _$TakeQuizQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TakeQuizQuestionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<TakeQuizAnswerModel> _answers;
  @override
  List<TakeQuizAnswerModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  String toString() {
    return 'TakeQuizQuestionModel(id: $id, title: $title, answers: $answers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakeQuizQuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._answers, _answers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, const DeepCollectionEquality().hash(_answers));

  /// Create a copy of TakeQuizQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TakeQuizQuestionModelImplCopyWith<_$TakeQuizQuestionModelImpl>
      get copyWith => __$$TakeQuizQuestionModelImplCopyWithImpl<
          _$TakeQuizQuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TakeQuizQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _TakeQuizQuestionModel implements TakeQuizQuestionModel {
  const factory _TakeQuizQuestionModel(
          {required final String id,
          required final String title,
          required final List<TakeQuizAnswerModel> answers}) =
      _$TakeQuizQuestionModelImpl;

  factory _TakeQuizQuestionModel.fromJson(Map<String, dynamic> json) =
      _$TakeQuizQuestionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  List<TakeQuizAnswerModel> get answers;

  /// Create a copy of TakeQuizQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TakeQuizQuestionModelImplCopyWith<_$TakeQuizQuestionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
