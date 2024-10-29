// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_details_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizDetailsResultModel _$QuizDetailsResultModelFromJson(
    Map<String, dynamic> json) {
  return _QuizDetailsResultModel.fromJson(json);
}

/// @nodoc
mixin _$QuizDetailsResultModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<TakeQuizResultQuestionModel> get questions =>
      throw _privateConstructorUsedError;

  /// Serializes this QuizDetailsResultModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizDetailsResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizDetailsResultModelCopyWith<QuizDetailsResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizDetailsResultModelCopyWith<$Res> {
  factory $QuizDetailsResultModelCopyWith(QuizDetailsResultModel value,
          $Res Function(QuizDetailsResultModel) then) =
      _$QuizDetailsResultModelCopyWithImpl<$Res, QuizDetailsResultModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      List<TakeQuizResultQuestionModel> questions});
}

/// @nodoc
class _$QuizDetailsResultModelCopyWithImpl<$Res,
        $Val extends QuizDetailsResultModel>
    implements $QuizDetailsResultModelCopyWith<$Res> {
  _$QuizDetailsResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizDetailsResultModel
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
              as List<TakeQuizResultQuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizDetailsResultModelImplCopyWith<$Res>
    implements $QuizDetailsResultModelCopyWith<$Res> {
  factory _$$QuizDetailsResultModelImplCopyWith(
          _$QuizDetailsResultModelImpl value,
          $Res Function(_$QuizDetailsResultModelImpl) then) =
      __$$QuizDetailsResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      List<TakeQuizResultQuestionModel> questions});
}

/// @nodoc
class __$$QuizDetailsResultModelImplCopyWithImpl<$Res>
    extends _$QuizDetailsResultModelCopyWithImpl<$Res,
        _$QuizDetailsResultModelImpl>
    implements _$$QuizDetailsResultModelImplCopyWith<$Res> {
  __$$QuizDetailsResultModelImplCopyWithImpl(
      _$QuizDetailsResultModelImpl _value,
      $Res Function(_$QuizDetailsResultModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizDetailsResultModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? questions = null,
  }) {
    return _then(_$QuizDetailsResultModelImpl(
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
              as List<TakeQuizResultQuestionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizDetailsResultModelImpl implements _QuizDetailsResultModel {
  const _$QuizDetailsResultModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required final List<TakeQuizResultQuestionModel> questions})
      : _questions = questions;

  factory _$QuizDetailsResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizDetailsResultModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  final List<TakeQuizResultQuestionModel> _questions;
  @override
  List<TakeQuizResultQuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuizDetailsResultModel(id: $id, title: $title, description: $description, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizDetailsResultModelImpl &&
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

  /// Create a copy of QuizDetailsResultModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizDetailsResultModelImplCopyWith<_$QuizDetailsResultModelImpl>
      get copyWith => __$$QuizDetailsResultModelImplCopyWithImpl<
          _$QuizDetailsResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizDetailsResultModelImplToJson(
      this,
    );
  }
}

abstract class _QuizDetailsResultModel implements QuizDetailsResultModel {
  const factory _QuizDetailsResultModel(
          {required final String id,
          required final String title,
          required final String description,
          required final List<TakeQuizResultQuestionModel> questions}) =
      _$QuizDetailsResultModelImpl;

  factory _QuizDetailsResultModel.fromJson(Map<String, dynamic> json) =
      _$QuizDetailsResultModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  List<TakeQuizResultQuestionModel> get questions;

  /// Create a copy of QuizDetailsResultModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizDetailsResultModelImplCopyWith<_$QuizDetailsResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
