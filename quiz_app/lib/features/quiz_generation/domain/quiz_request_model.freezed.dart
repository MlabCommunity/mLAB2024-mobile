// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizRequestModel {
  String get content => throw _privateConstructorUsedError;
  int get numberOfQuestions => throw _privateConstructorUsedError;
  List<String> get questionTypes => throw _privateConstructorUsedError;
  List<PlatformFile> get attachments => throw _privateConstructorUsedError;
  QuizLanguage get language => throw _privateConstructorUsedError;

  /// Create a copy of QuizRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizRequestModelCopyWith<QuizRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizRequestModelCopyWith<$Res> {
  factory $QuizRequestModelCopyWith(
          QuizRequestModel value, $Res Function(QuizRequestModel) then) =
      _$QuizRequestModelCopyWithImpl<$Res, QuizRequestModel>;
  @useResult
  $Res call(
      {String content,
      int numberOfQuestions,
      List<String> questionTypes,
      List<PlatformFile> attachments,
      QuizLanguage language});
}

/// @nodoc
class _$QuizRequestModelCopyWithImpl<$Res, $Val extends QuizRequestModel>
    implements $QuizRequestModelCopyWith<$Res> {
  _$QuizRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? numberOfQuestions = null,
    Object? questionTypes = null,
    Object? attachments = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfQuestions: null == numberOfQuestions
          ? _value.numberOfQuestions
          : numberOfQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      questionTypes: null == questionTypes
          ? _value.questionTypes
          : questionTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as QuizLanguage,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizRequestModelImplCopyWith<$Res>
    implements $QuizRequestModelCopyWith<$Res> {
  factory _$$QuizRequestModelImplCopyWith(_$QuizRequestModelImpl value,
          $Res Function(_$QuizRequestModelImpl) then) =
      __$$QuizRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      int numberOfQuestions,
      List<String> questionTypes,
      List<PlatformFile> attachments,
      QuizLanguage language});
}

/// @nodoc
class __$$QuizRequestModelImplCopyWithImpl<$Res>
    extends _$QuizRequestModelCopyWithImpl<$Res, _$QuizRequestModelImpl>
    implements _$$QuizRequestModelImplCopyWith<$Res> {
  __$$QuizRequestModelImplCopyWithImpl(_$QuizRequestModelImpl _value,
      $Res Function(_$QuizRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? numberOfQuestions = null,
    Object? questionTypes = null,
    Object? attachments = null,
    Object? language = null,
  }) {
    return _then(_$QuizRequestModelImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfQuestions: null == numberOfQuestions
          ? _value.numberOfQuestions
          : numberOfQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      questionTypes: null == questionTypes
          ? _value._questionTypes
          : questionTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<PlatformFile>,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as QuizLanguage,
    ));
  }
}

/// @nodoc

class _$QuizRequestModelImpl implements _QuizRequestModel {
  const _$QuizRequestModelImpl(
      {required this.content,
      required this.numberOfQuestions,
      required final List<String> questionTypes,
      required final List<PlatformFile> attachments,
      required this.language})
      : _questionTypes = questionTypes,
        _attachments = attachments;

  @override
  final String content;
  @override
  final int numberOfQuestions;
  final List<String> _questionTypes;
  @override
  List<String> get questionTypes {
    if (_questionTypes is EqualUnmodifiableListView) return _questionTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionTypes);
  }

  final List<PlatformFile> _attachments;
  @override
  List<PlatformFile> get attachments {
    if (_attachments is EqualUnmodifiableListView) return _attachments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final QuizLanguage language;

  @override
  String toString() {
    return 'QuizRequestModel(content: $content, numberOfQuestions: $numberOfQuestions, questionTypes: $questionTypes, attachments: $attachments, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizRequestModelImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.numberOfQuestions, numberOfQuestions) ||
                other.numberOfQuestions == numberOfQuestions) &&
            const DeepCollectionEquality()
                .equals(other._questionTypes, _questionTypes) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      numberOfQuestions,
      const DeepCollectionEquality().hash(_questionTypes),
      const DeepCollectionEquality().hash(_attachments),
      language);

  /// Create a copy of QuizRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizRequestModelImplCopyWith<_$QuizRequestModelImpl> get copyWith =>
      __$$QuizRequestModelImplCopyWithImpl<_$QuizRequestModelImpl>(
          this, _$identity);
}

abstract class _QuizRequestModel implements QuizRequestModel {
  const factory _QuizRequestModel(
      {required final String content,
      required final int numberOfQuestions,
      required final List<String> questionTypes,
      required final List<PlatformFile> attachments,
      required final QuizLanguage language}) = _$QuizRequestModelImpl;

  @override
  String get content;
  @override
  int get numberOfQuestions;
  @override
  List<String> get questionTypes;
  @override
  List<PlatformFile> get attachments;
  @override
  QuizLanguage get language;

  /// Create a copy of QuizRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizRequestModelImplCopyWith<_$QuizRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
