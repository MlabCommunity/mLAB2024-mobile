// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateQuestionModel _$UpdateQuestionModelFromJson(Map<String, dynamic> json) {
  return _UpdateQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateQuestionModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @AnswerModelConverter()
  List<AnswerModelInterface> get updateAnswers =>
      throw _privateConstructorUsedError;
  String get quizID => throw _privateConstructorUsedError;

  /// Serializes this UpdateQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateQuestionModelCopyWith<UpdateQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateQuestionModelCopyWith<$Res> {
  factory $UpdateQuestionModelCopyWith(
          UpdateQuestionModel value, $Res Function(UpdateQuestionModel) then) =
      _$UpdateQuestionModelCopyWithImpl<$Res, UpdateQuestionModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      @AnswerModelConverter() List<AnswerModelInterface> updateAnswers,
      String quizID});
}

/// @nodoc
class _$UpdateQuestionModelCopyWithImpl<$Res, $Val extends UpdateQuestionModel>
    implements $UpdateQuestionModelCopyWith<$Res> {
  _$UpdateQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? updateAnswers = null,
    Object? quizID = null,
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
      updateAnswers: null == updateAnswers
          ? _value.updateAnswers
          : updateAnswers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModelInterface>,
      quizID: null == quizID
          ? _value.quizID
          : quizID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateQuestionModelImplCopyWith<$Res>
    implements $UpdateQuestionModelCopyWith<$Res> {
  factory _$$UpdateQuestionModelImplCopyWith(_$UpdateQuestionModelImpl value,
          $Res Function(_$UpdateQuestionModelImpl) then) =
      __$$UpdateQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @AnswerModelConverter() List<AnswerModelInterface> updateAnswers,
      String quizID});
}

/// @nodoc
class __$$UpdateQuestionModelImplCopyWithImpl<$Res>
    extends _$UpdateQuestionModelCopyWithImpl<$Res, _$UpdateQuestionModelImpl>
    implements _$$UpdateQuestionModelImplCopyWith<$Res> {
  __$$UpdateQuestionModelImplCopyWithImpl(_$UpdateQuestionModelImpl _value,
      $Res Function(_$UpdateQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? updateAnswers = null,
    Object? quizID = null,
  }) {
    return _then(_$UpdateQuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      updateAnswers: null == updateAnswers
          ? _value._updateAnswers
          : updateAnswers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModelInterface>,
      quizID: null == quizID
          ? _value.quizID
          : quizID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateQuestionModelImpl extends _UpdateQuestionModel {
  const _$UpdateQuestionModelImpl(
      {required this.id,
      required this.title,
      @AnswerModelConverter()
      required final List<AnswerModelInterface> updateAnswers,
      required this.quizID})
      : _updateAnswers = updateAnswers,
        super._();

  factory _$UpdateQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateQuestionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  final List<AnswerModelInterface> _updateAnswers;
  @override
  @AnswerModelConverter()
  List<AnswerModelInterface> get updateAnswers {
    if (_updateAnswers is EqualUnmodifiableListView) return _updateAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_updateAnswers);
  }

  @override
  final String quizID;

  @override
  String toString() {
    return 'UpdateQuestionModel(id: $id, title: $title, updateAnswers: $updateAnswers, quizID: $quizID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._updateAnswers, _updateAnswers) &&
            (identical(other.quizID, quizID) || other.quizID == quizID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_updateAnswers), quizID);

  /// Create a copy of UpdateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuestionModelImplCopyWith<_$UpdateQuestionModelImpl> get copyWith =>
      __$$UpdateQuestionModelImplCopyWithImpl<_$UpdateQuestionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateQuestionModel extends UpdateQuestionModel {
  const factory _UpdateQuestionModel(
      {required final String id,
      required final String title,
      @AnswerModelConverter()
      required final List<AnswerModelInterface> updateAnswers,
      required final String quizID}) = _$UpdateQuestionModelImpl;
  const _UpdateQuestionModel._() : super._();

  factory _UpdateQuestionModel.fromJson(Map<String, dynamic> json) =
      _$UpdateQuestionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @AnswerModelConverter()
  List<AnswerModelInterface> get updateAnswers;
  @override
  String get quizID;

  /// Create a copy of UpdateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateQuestionModelImplCopyWith<_$UpdateQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
