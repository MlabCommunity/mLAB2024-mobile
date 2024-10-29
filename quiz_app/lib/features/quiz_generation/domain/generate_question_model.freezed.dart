// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateQuestionModel _$GenerateQuestionModelFromJson(
    Map<String, dynamic> json) {
  return _GenerateQuestionModel.fromJson(json);
}

/// @nodoc
mixin _$GenerateQuestionModel {
  String get title => throw _privateConstructorUsedError;
  @AnswerModelConverter()
  List<AnswerModelInterface> get generateAnswers =>
      throw _privateConstructorUsedError;

  /// Serializes this GenerateQuestionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenerateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateQuestionModelCopyWith<GenerateQuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateQuestionModelCopyWith<$Res> {
  factory $GenerateQuestionModelCopyWith(GenerateQuestionModel value,
          $Res Function(GenerateQuestionModel) then) =
      _$GenerateQuestionModelCopyWithImpl<$Res, GenerateQuestionModel>;
  @useResult
  $Res call(
      {String title,
      @AnswerModelConverter() List<AnswerModelInterface> generateAnswers});
}

/// @nodoc
class _$GenerateQuestionModelCopyWithImpl<$Res,
        $Val extends GenerateQuestionModel>
    implements $GenerateQuestionModelCopyWith<$Res> {
  _$GenerateQuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? generateAnswers = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      generateAnswers: null == generateAnswers
          ? _value.generateAnswers
          : generateAnswers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModelInterface>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerateQuestionModelImplCopyWith<$Res>
    implements $GenerateQuestionModelCopyWith<$Res> {
  factory _$$GenerateQuestionModelImplCopyWith(
          _$GenerateQuestionModelImpl value,
          $Res Function(_$GenerateQuestionModelImpl) then) =
      __$$GenerateQuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @AnswerModelConverter() List<AnswerModelInterface> generateAnswers});
}

/// @nodoc
class __$$GenerateQuestionModelImplCopyWithImpl<$Res>
    extends _$GenerateQuestionModelCopyWithImpl<$Res,
        _$GenerateQuestionModelImpl>
    implements _$$GenerateQuestionModelImplCopyWith<$Res> {
  __$$GenerateQuestionModelImplCopyWithImpl(_$GenerateQuestionModelImpl _value,
      $Res Function(_$GenerateQuestionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? generateAnswers = null,
  }) {
    return _then(_$GenerateQuestionModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      generateAnswers: null == generateAnswers
          ? _value._generateAnswers
          : generateAnswers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModelInterface>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateQuestionModelImpl extends _GenerateQuestionModel {
  const _$GenerateQuestionModelImpl(
      {required this.title,
      @AnswerModelConverter()
      required final List<AnswerModelInterface> generateAnswers})
      : _generateAnswers = generateAnswers,
        super._();

  factory _$GenerateQuestionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateQuestionModelImplFromJson(json);

  @override
  final String title;
  final List<AnswerModelInterface> _generateAnswers;
  @override
  @AnswerModelConverter()
  List<AnswerModelInterface> get generateAnswers {
    if (_generateAnswers is EqualUnmodifiableListView) return _generateAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generateAnswers);
  }

  @override
  String toString() {
    return 'GenerateQuestionModel(title: $title, generateAnswers: $generateAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateQuestionModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._generateAnswers, _generateAnswers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_generateAnswers));

  /// Create a copy of GenerateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateQuestionModelImplCopyWith<_$GenerateQuestionModelImpl>
      get copyWith => __$$GenerateQuestionModelImplCopyWithImpl<
          _$GenerateQuestionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateQuestionModelImplToJson(
      this,
    );
  }
}

abstract class _GenerateQuestionModel extends GenerateQuestionModel {
  const factory _GenerateQuestionModel(
          {required final String title,
          @AnswerModelConverter()
          required final List<AnswerModelInterface> generateAnswers}) =
      _$GenerateQuestionModelImpl;
  const _GenerateQuestionModel._() : super._();

  factory _GenerateQuestionModel.fromJson(Map<String, dynamic> json) =
      _$GenerateQuestionModelImpl.fromJson;

  @override
  String get title;
  @override
  @AnswerModelConverter()
  List<AnswerModelInterface> get generateAnswers;

  /// Create a copy of GenerateQuestionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateQuestionModelImplCopyWith<_$GenerateQuestionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
