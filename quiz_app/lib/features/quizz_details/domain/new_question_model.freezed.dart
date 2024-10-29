// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewQuestionModel _$NewQuestionModelFromJson(Map<String, dynamic> json) {
  return _NewQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$NewQuestionModel {
  String get title => throw _privateConstructorUsedError;
  @AnswerModelConverter()
  List<AnswerModelInterface> get createAnswers =>
      throw _privateConstructorUsedError;
  String get quizID => throw _privateConstructorUsedError;

  /// Serializes this NewQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewQuestionModelCopyWith<NewQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewQuestionModelCopyWith<$Res> {
  factory $NewQuestionModelCopyWith(
          NewQuestionModel value, $Res Function(NewQuestionModel) then) =
      _$NewQuestionModelCopyWithImpl<$Res, NewQuestionModel>;
  @useResult
  $Res call(
      {String title,
      @AnswerModelConverter() List<AnswerModelInterface> createAnswers,
      String quizID});
}

/// @nodoc
class _$NewQuestionModelCopyWithImpl<$Res, $Val extends NewQuestionModel>
    implements $NewQuestionModelCopyWith<$Res> {
  _$NewQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? createAnswers = null,
    Object? quizID = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createAnswers: null == createAnswers
          ? _value.createAnswers
          : createAnswers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModelInterface>,
      quizID: null == quizID
          ? _value.quizID
          : quizID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewQuestionModelImplCopyWith<$Res>
    implements $NewQuestionModelCopyWith<$Res> {
  factory _$$NewQuestionModelImplCopyWith(_$NewQuestionModelImpl value,
          $Res Function(_$NewQuestionModelImpl) then) =
      __$$NewQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @AnswerModelConverter() List<AnswerModelInterface> createAnswers,
      String quizID});
}

/// @nodoc
class __$$NewQuestionModelImplCopyWithImpl<$Res>
    extends _$NewQuestionModelCopyWithImpl<$Res, _$NewQuestionModelImpl>
    implements _$$NewQuestionModelImplCopyWith<$Res> {
  __$$NewQuestionModelImplCopyWithImpl(_$NewQuestionModelImpl _value,
      $Res Function(_$NewQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? createAnswers = null,
    Object? quizID = null,
  }) {
    return _then(_$NewQuestionModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createAnswers: null == createAnswers
          ? _value._createAnswers
          : createAnswers // ignore: cast_nullable_to_non_nullable
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
class _$NewQuestionModelImpl extends _NewQuestionModel {
  const _$NewQuestionModelImpl(
      {required this.title,
      @AnswerModelConverter()
      required final List<AnswerModelInterface> createAnswers,
      required this.quizID})
      : _createAnswers = createAnswers,
        super._();

  factory _$NewQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewQuestionModelImplFromJson(json);

  @override
  final String title;
  final List<AnswerModelInterface> _createAnswers;
  @override
  @AnswerModelConverter()
  List<AnswerModelInterface> get createAnswers {
    if (_createAnswers is EqualUnmodifiableListView) return _createAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createAnswers);
  }

  @override
  final String quizID;

  @override
  String toString() {
    return 'NewQuestionModel(title: $title, createAnswers: $createAnswers, quizID: $quizID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewQuestionModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._createAnswers, _createAnswers) &&
            (identical(other.quizID, quizID) || other.quizID == quizID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_createAnswers), quizID);

  /// Create a copy of NewQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewQuestionModelImplCopyWith<_$NewQuestionModelImpl> get copyWith =>
      __$$NewQuestionModelImplCopyWithImpl<_$NewQuestionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _NewQuestionModel extends NewQuestionModel {
  const factory _NewQuestionModel(
      {required final String title,
      @AnswerModelConverter()
      required final List<AnswerModelInterface> createAnswers,
      required final String quizID}) = _$NewQuestionModelImpl;
  const _NewQuestionModel._() : super._();

  factory _NewQuestionModel.fromJson(Map<String, dynamic> json) =
      _$NewQuestionModelImpl.fromJson;

  @override
  String get title;
  @override
  @AnswerModelConverter()
  List<AnswerModelInterface> get createAnswers;
  @override
  String get quizID;

  /// Create a copy of NewQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewQuestionModelImplCopyWith<_$NewQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
