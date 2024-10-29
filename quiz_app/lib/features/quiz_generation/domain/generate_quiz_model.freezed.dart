// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateQuizModel _$GenerateQuizModelFromJson(Map<String, dynamic> json) {
  return _GenerateQuizModel.fromJson(json);
}

/// @nodoc
mixin _$GenerateQuizModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @QuestionModelConverter()
  List<QuestionModelInterface> get generateQuestions =>
      throw _privateConstructorUsedError;

  /// Serializes this GenerateQuizModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenerateQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateQuizModelCopyWith<GenerateQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateQuizModelCopyWith<$Res> {
  factory $GenerateQuizModelCopyWith(
          GenerateQuizModel value, $Res Function(GenerateQuizModel) then) =
      _$GenerateQuizModelCopyWithImpl<$Res, GenerateQuizModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      @QuestionModelConverter()
      List<QuestionModelInterface> generateQuestions});
}

/// @nodoc
class _$GenerateQuizModelCopyWithImpl<$Res, $Val extends GenerateQuizModel>
    implements $GenerateQuizModelCopyWith<$Res> {
  _$GenerateQuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? generateQuestions = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      generateQuestions: null == generateQuestions
          ? _value.generateQuestions
          : generateQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModelInterface>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerateQuizModelImplCopyWith<$Res>
    implements $GenerateQuizModelCopyWith<$Res> {
  factory _$$GenerateQuizModelImplCopyWith(_$GenerateQuizModelImpl value,
          $Res Function(_$GenerateQuizModelImpl) then) =
      __$$GenerateQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      @QuestionModelConverter()
      List<QuestionModelInterface> generateQuestions});
}

/// @nodoc
class __$$GenerateQuizModelImplCopyWithImpl<$Res>
    extends _$GenerateQuizModelCopyWithImpl<$Res, _$GenerateQuizModelImpl>
    implements _$$GenerateQuizModelImplCopyWith<$Res> {
  __$$GenerateQuizModelImplCopyWithImpl(_$GenerateQuizModelImpl _value,
      $Res Function(_$GenerateQuizModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? generateQuestions = null,
  }) {
    return _then(_$GenerateQuizModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      generateQuestions: null == generateQuestions
          ? _value._generateQuestions
          : generateQuestions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModelInterface>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateQuizModelImpl implements _GenerateQuizModel {
  const _$GenerateQuizModelImpl(
      {required this.title,
      required this.description,
      @QuestionModelConverter()
      required final List<QuestionModelInterface> generateQuestions})
      : _generateQuestions = generateQuestions;

  factory _$GenerateQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateQuizModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  final List<QuestionModelInterface> _generateQuestions;
  @override
  @QuestionModelConverter()
  List<QuestionModelInterface> get generateQuestions {
    if (_generateQuestions is EqualUnmodifiableListView)
      return _generateQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generateQuestions);
  }

  @override
  String toString() {
    return 'GenerateQuizModel(title: $title, description: $description, generateQuestions: $generateQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateQuizModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._generateQuestions, _generateQuestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(_generateQuestions));

  /// Create a copy of GenerateQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateQuizModelImplCopyWith<_$GenerateQuizModelImpl> get copyWith =>
      __$$GenerateQuizModelImplCopyWithImpl<_$GenerateQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateQuizModelImplToJson(
      this,
    );
  }
}

abstract class _GenerateQuizModel implements GenerateQuizModel {
  const factory _GenerateQuizModel(
          {required final String title,
          required final String description,
          @QuestionModelConverter()
          required final List<QuestionModelInterface> generateQuestions}) =
      _$GenerateQuizModelImpl;

  factory _GenerateQuizModel.fromJson(Map<String, dynamic> json) =
      _$GenerateQuizModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @QuestionModelConverter()
  List<QuestionModelInterface> get generateQuestions;

  /// Create a copy of GenerateQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateQuizModelImplCopyWith<_$GenerateQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
