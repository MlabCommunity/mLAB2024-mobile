// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizResponseModel _$QuizResponseModelFromJson(Map<String, dynamic> json) {
  return _QuizResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuizResponseModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<TakeQuizQuestionModel> get questions =>
      throw _privateConstructorUsedError;

  /// Serializes this QuizResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizResponseModelCopyWith<QuizResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResponseModelCopyWith<$Res> {
  factory $QuizResponseModelCopyWith(
          QuizResponseModel value, $Res Function(QuizResponseModel) then) =
      _$QuizResponseModelCopyWithImpl<$Res, QuizResponseModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      List<TakeQuizQuestionModel> questions});
}

/// @nodoc
class _$QuizResponseModelCopyWithImpl<$Res, $Val extends QuizResponseModel>
    implements $QuizResponseModelCopyWith<$Res> {
  _$QuizResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? questions = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TakeQuizQuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizResponseModelImplCopyWith<$Res>
    implements $QuizResponseModelCopyWith<$Res> {
  factory _$$QuizResponseModelImplCopyWith(_$QuizResponseModelImpl value,
          $Res Function(_$QuizResponseModelImpl) then) =
      __$$QuizResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      List<TakeQuizQuestionModel> questions});
}

/// @nodoc
class __$$QuizResponseModelImplCopyWithImpl<$Res>
    extends _$QuizResponseModelCopyWithImpl<$Res, _$QuizResponseModelImpl>
    implements _$$QuizResponseModelImplCopyWith<$Res> {
  __$$QuizResponseModelImplCopyWithImpl(_$QuizResponseModelImpl _value,
      $Res Function(_$QuizResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? questions = null,
  }) {
    return _then(_$QuizResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<TakeQuizQuestionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizResponseModelImpl implements _QuizResponseModel {
  const _$QuizResponseModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required final List<TakeQuizQuestionModel> questions})
      : _questions = questions;

  factory _$QuizResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizResponseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  final List<TakeQuizQuestionModel> _questions;
  @override
  List<TakeQuizQuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuizResponseModel(id: $id, title: $title, description: $description, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      const DeepCollectionEquality().hash(_questions));

  /// Create a copy of QuizResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizResponseModelImplCopyWith<_$QuizResponseModelImpl> get copyWith =>
      __$$QuizResponseModelImplCopyWithImpl<_$QuizResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizResponseModelImplToJson(
      this,
    );
  }
}

abstract class _QuizResponseModel implements QuizResponseModel {
  const factory _QuizResponseModel(
          {required final String id,
          required final String title,
          required final String description,
          required final List<TakeQuizQuestionModel> questions}) =
      _$QuizResponseModelImpl;

  factory _QuizResponseModel.fromJson(Map<String, dynamic> json) =
      _$QuizResponseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  List<TakeQuizQuestionModel> get questions;

  /// Create a copy of QuizResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizResponseModelImplCopyWith<_$QuizResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
