// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateQuizModel _$CreateQuizModelFromJson(Map<String, dynamic> json) {
  return _CreateQuizModel.fromJson(json);
}

/// @nodoc
mixin _$CreateQuizModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<CreateQuestionModel> get createQuizQuestions =>
      throw _privateConstructorUsedError;

  /// Serializes this CreateQuizModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateQuizModelCopyWith<CreateQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuizModelCopyWith<$Res> {
  factory $CreateQuizModelCopyWith(
          CreateQuizModel value, $Res Function(CreateQuizModel) then) =
      _$CreateQuizModelCopyWithImpl<$Res, CreateQuizModel>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<CreateQuestionModel> createQuizQuestions});
}

/// @nodoc
class _$CreateQuizModelCopyWithImpl<$Res, $Val extends CreateQuizModel>
    implements $CreateQuizModelCopyWith<$Res> {
  _$CreateQuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? createQuizQuestions = null,
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
      createQuizQuestions: null == createQuizQuestions
          ? _value.createQuizQuestions
          : createQuizQuestions // ignore: cast_nullable_to_non_nullable
              as List<CreateQuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateQuizModelImplCopyWith<$Res>
    implements $CreateQuizModelCopyWith<$Res> {
  factory _$$CreateQuizModelImplCopyWith(_$CreateQuizModelImpl value,
          $Res Function(_$CreateQuizModelImpl) then) =
      __$$CreateQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      List<CreateQuestionModel> createQuizQuestions});
}

/// @nodoc
class __$$CreateQuizModelImplCopyWithImpl<$Res>
    extends _$CreateQuizModelCopyWithImpl<$Res, _$CreateQuizModelImpl>
    implements _$$CreateQuizModelImplCopyWith<$Res> {
  __$$CreateQuizModelImplCopyWithImpl(
      _$CreateQuizModelImpl _value, $Res Function(_$CreateQuizModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? createQuizQuestions = null,
  }) {
    return _then(_$CreateQuizModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createQuizQuestions: null == createQuizQuestions
          ? _value._createQuizQuestions
          : createQuizQuestions // ignore: cast_nullable_to_non_nullable
              as List<CreateQuestionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateQuizModelImpl implements _CreateQuizModel {
  const _$CreateQuizModelImpl(
      {required this.title,
      required this.description,
      required final List<CreateQuestionModel> createQuizQuestions})
      : _createQuizQuestions = createQuizQuestions;

  factory _$CreateQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateQuizModelImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  final List<CreateQuestionModel> _createQuizQuestions;
  @override
  List<CreateQuestionModel> get createQuizQuestions {
    if (_createQuizQuestions is EqualUnmodifiableListView)
      return _createQuizQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createQuizQuestions);
  }

  @override
  String toString() {
    return 'CreateQuizModel(title: $title, description: $description, createQuizQuestions: $createQuizQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuizModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._createQuizQuestions, _createQuizQuestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(_createQuizQuestions));

  /// Create a copy of CreateQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuizModelImplCopyWith<_$CreateQuizModelImpl> get copyWith =>
      __$$CreateQuizModelImplCopyWithImpl<_$CreateQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateQuizModelImplToJson(
      this,
    );
  }
}

abstract class _CreateQuizModel implements CreateQuizModel {
  const factory _CreateQuizModel(
          {required final String title,
          required final String description,
          required final List<CreateQuestionModel> createQuizQuestions}) =
      _$CreateQuizModelImpl;

  factory _CreateQuizModel.fromJson(Map<String, dynamic> json) =
      _$CreateQuizModelImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  List<CreateQuestionModel> get createQuizQuestions;

  /// Create a copy of CreateQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateQuizModelImplCopyWith<_$CreateQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
