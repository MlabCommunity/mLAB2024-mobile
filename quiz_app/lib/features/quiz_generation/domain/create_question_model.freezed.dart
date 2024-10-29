// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateQuestionModel _$CreateQuestionModelFromJson(Map<String, dynamic> json) {
  return _CreateQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$CreateQuestionModel {
  String get title => throw _privateConstructorUsedError;
  @AnswerModelConverter()
  List<AnswerModelInterface> get createQuizAnswers =>
      throw _privateConstructorUsedError;

  /// Serializes this CreateQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateQuestionModelCopyWith<CreateQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuestionModelCopyWith<$Res> {
  factory $CreateQuestionModelCopyWith(
          CreateQuestionModel value, $Res Function(CreateQuestionModel) then) =
      _$CreateQuestionModelCopyWithImpl<$Res, CreateQuestionModel>;
  @useResult
  $Res call(
      {String title,
      @AnswerModelConverter() List<AnswerModelInterface> createQuizAnswers});
}

/// @nodoc
class _$CreateQuestionModelCopyWithImpl<$Res, $Val extends CreateQuestionModel>
    implements $CreateQuestionModelCopyWith<$Res> {
  _$CreateQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? createQuizAnswers = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createQuizAnswers: null == createQuizAnswers
          ? _value.createQuizAnswers
          : createQuizAnswers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModelInterface>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateQuestionModelImplCopyWith<$Res>
    implements $CreateQuestionModelCopyWith<$Res> {
  factory _$$CreateQuestionModelImplCopyWith(_$CreateQuestionModelImpl value,
          $Res Function(_$CreateQuestionModelImpl) then) =
      __$$CreateQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @AnswerModelConverter() List<AnswerModelInterface> createQuizAnswers});
}

/// @nodoc
class __$$CreateQuestionModelImplCopyWithImpl<$Res>
    extends _$CreateQuestionModelCopyWithImpl<$Res, _$CreateQuestionModelImpl>
    implements _$$CreateQuestionModelImplCopyWith<$Res> {
  __$$CreateQuestionModelImplCopyWithImpl(_$CreateQuestionModelImpl _value,
      $Res Function(_$CreateQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? createQuizAnswers = null,
  }) {
    return _then(_$CreateQuestionModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createQuizAnswers: null == createQuizAnswers
          ? _value._createQuizAnswers
          : createQuizAnswers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModelInterface>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateQuestionModelImpl implements _CreateQuestionModel {
  const _$CreateQuestionModelImpl(
      {required this.title,
      @AnswerModelConverter()
      required final List<AnswerModelInterface> createQuizAnswers})
      : _createQuizAnswers = createQuizAnswers;

  factory _$CreateQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateQuestionModelImplFromJson(json);

  @override
  final String title;
  final List<AnswerModelInterface> _createQuizAnswers;
  @override
  @AnswerModelConverter()
  List<AnswerModelInterface> get createQuizAnswers {
    if (_createQuizAnswers is EqualUnmodifiableListView)
      return _createQuizAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createQuizAnswers);
  }

  @override
  String toString() {
    return 'CreateQuestionModel(title: $title, createQuizAnswers: $createQuizAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuestionModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._createQuizAnswers, _createQuizAnswers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_createQuizAnswers));

  /// Create a copy of CreateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuestionModelImplCopyWith<_$CreateQuestionModelImpl> get copyWith =>
      __$$CreateQuestionModelImplCopyWithImpl<_$CreateQuestionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _CreateQuestionModel implements CreateQuestionModel {
  const factory _CreateQuestionModel(
          {required final String title,
          @AnswerModelConverter()
          required final List<AnswerModelInterface> createQuizAnswers}) =
      _$CreateQuestionModelImpl;

  factory _CreateQuestionModel.fromJson(Map<String, dynamic> json) =
      _$CreateQuestionModelImpl.fromJson;

  @override
  String get title;
  @override
  @AnswerModelConverter()
  List<AnswerModelInterface> get createQuizAnswers;

  /// Create a copy of CreateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateQuestionModelImplCopyWith<_$CreateQuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
