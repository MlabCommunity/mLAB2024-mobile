// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quizz_archive_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizzArchiveModel _$QuizzArchiveModelFromJson(Map<String, dynamic> json) {
  return _QuizzArchiveModel.fromJson(json);
}

/// @nodoc
mixin _$QuizzArchiveModel {
  String get quizId => throw _privateConstructorUsedError;
  String get quizTitle => throw _privateConstructorUsedError;
  String get quizDescription => throw _privateConstructorUsedError;
  String get participationDateUtc => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<QuizzArchiveQuestionModel> get questions =>
      throw _privateConstructorUsedError;
  List<QuizzArchiveUserAnswerModel> get userAnswers =>
      throw _privateConstructorUsedError;
  QuizzArchiveQuizResultModel get quizResult =>
      throw _privateConstructorUsedError;

  /// Serializes this QuizzArchiveModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizzArchiveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizzArchiveModelCopyWith<QuizzArchiveModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzArchiveModelCopyWith<$Res> {
  factory $QuizzArchiveModelCopyWith(
          QuizzArchiveModel value, $Res Function(QuizzArchiveModel) then) =
      _$QuizzArchiveModelCopyWithImpl<$Res, QuizzArchiveModel>;
  @useResult
  $Res call(
      {String quizId,
      String quizTitle,
      String quizDescription,
      String participationDateUtc,
      String status,
      List<QuizzArchiveQuestionModel> questions,
      List<QuizzArchiveUserAnswerModel> userAnswers,
      QuizzArchiveQuizResultModel quizResult});

  $QuizzArchiveQuizResultModelCopyWith<$Res> get quizResult;
}

/// @nodoc
class _$QuizzArchiveModelCopyWithImpl<$Res, $Val extends QuizzArchiveModel>
    implements $QuizzArchiveModelCopyWith<$Res> {
  _$QuizzArchiveModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizzArchiveModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = null,
    Object? quizTitle = null,
    Object? quizDescription = null,
    Object? participationDateUtc = null,
    Object? status = null,
    Object? questions = null,
    Object? userAnswers = null,
    Object? quizResult = null,
  }) {
    return _then(_value.copyWith(
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      quizTitle: null == quizTitle
          ? _value.quizTitle
          : quizTitle // ignore: cast_nullable_to_non_nullable
              as String,
      quizDescription: null == quizDescription
          ? _value.quizDescription
          : quizDescription // ignore: cast_nullable_to_non_nullable
              as String,
      participationDateUtc: null == participationDateUtc
          ? _value.participationDateUtc
          : participationDateUtc // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuizzArchiveQuestionModel>,
      userAnswers: null == userAnswers
          ? _value.userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as List<QuizzArchiveUserAnswerModel>,
      quizResult: null == quizResult
          ? _value.quizResult
          : quizResult // ignore: cast_nullable_to_non_nullable
              as QuizzArchiveQuizResultModel,
    ) as $Val);
  }

  /// Create a copy of QuizzArchiveModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuizzArchiveQuizResultModelCopyWith<$Res> get quizResult {
    return $QuizzArchiveQuizResultModelCopyWith<$Res>(_value.quizResult,
        (value) {
      return _then(_value.copyWith(quizResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuizzArchiveModelImplCopyWith<$Res>
    implements $QuizzArchiveModelCopyWith<$Res> {
  factory _$$QuizzArchiveModelImplCopyWith(_$QuizzArchiveModelImpl value,
          $Res Function(_$QuizzArchiveModelImpl) then) =
      __$$QuizzArchiveModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String quizId,
      String quizTitle,
      String quizDescription,
      String participationDateUtc,
      String status,
      List<QuizzArchiveQuestionModel> questions,
      List<QuizzArchiveUserAnswerModel> userAnswers,
      QuizzArchiveQuizResultModel quizResult});

  @override
  $QuizzArchiveQuizResultModelCopyWith<$Res> get quizResult;
}

/// @nodoc
class __$$QuizzArchiveModelImplCopyWithImpl<$Res>
    extends _$QuizzArchiveModelCopyWithImpl<$Res, _$QuizzArchiveModelImpl>
    implements _$$QuizzArchiveModelImplCopyWith<$Res> {
  __$$QuizzArchiveModelImplCopyWithImpl(_$QuizzArchiveModelImpl _value,
      $Res Function(_$QuizzArchiveModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizzArchiveModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = null,
    Object? quizTitle = null,
    Object? quizDescription = null,
    Object? participationDateUtc = null,
    Object? status = null,
    Object? questions = null,
    Object? userAnswers = null,
    Object? quizResult = null,
  }) {
    return _then(_$QuizzArchiveModelImpl(
      quizId: null == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as String,
      quizTitle: null == quizTitle
          ? _value.quizTitle
          : quizTitle // ignore: cast_nullable_to_non_nullable
              as String,
      quizDescription: null == quizDescription
          ? _value.quizDescription
          : quizDescription // ignore: cast_nullable_to_non_nullable
              as String,
      participationDateUtc: null == participationDateUtc
          ? _value.participationDateUtc
          : participationDateUtc // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuizzArchiveQuestionModel>,
      userAnswers: null == userAnswers
          ? _value._userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as List<QuizzArchiveUserAnswerModel>,
      quizResult: null == quizResult
          ? _value.quizResult
          : quizResult // ignore: cast_nullable_to_non_nullable
              as QuizzArchiveQuizResultModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizzArchiveModelImpl implements _QuizzArchiveModel {
  const _$QuizzArchiveModelImpl(
      {required this.quizId,
      required this.quizTitle,
      required this.quizDescription,
      required this.participationDateUtc,
      required this.status,
      required final List<QuizzArchiveQuestionModel> questions,
      required final List<QuizzArchiveUserAnswerModel> userAnswers,
      this.quizResult = const QuizzArchiveQuizResultModel(
          totalQuestions: 0, scorePercentage: 0, correctAnswers: 0)})
      : _questions = questions,
        _userAnswers = userAnswers;

  factory _$QuizzArchiveModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizzArchiveModelImplFromJson(json);

  @override
  final String quizId;
  @override
  final String quizTitle;
  @override
  final String quizDescription;
  @override
  final String participationDateUtc;
  @override
  final String status;
  final List<QuizzArchiveQuestionModel> _questions;
  @override
  List<QuizzArchiveQuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<QuizzArchiveUserAnswerModel> _userAnswers;
  @override
  List<QuizzArchiveUserAnswerModel> get userAnswers {
    if (_userAnswers is EqualUnmodifiableListView) return _userAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userAnswers);
  }

  @override
  @JsonKey()
  final QuizzArchiveQuizResultModel quizResult;

  @override
  String toString() {
    return 'QuizzArchiveModel(quizId: $quizId, quizTitle: $quizTitle, quizDescription: $quizDescription, participationDateUtc: $participationDateUtc, status: $status, questions: $questions, userAnswers: $userAnswers, quizResult: $quizResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzArchiveModelImpl &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.quizTitle, quizTitle) ||
                other.quizTitle == quizTitle) &&
            (identical(other.quizDescription, quizDescription) ||
                other.quizDescription == quizDescription) &&
            (identical(other.participationDateUtc, participationDateUtc) ||
                other.participationDateUtc == participationDateUtc) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality()
                .equals(other._userAnswers, _userAnswers) &&
            (identical(other.quizResult, quizResult) ||
                other.quizResult == quizResult));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quizId,
      quizTitle,
      quizDescription,
      participationDateUtc,
      status,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_userAnswers),
      quizResult);

  /// Create a copy of QuizzArchiveModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizzArchiveModelImplCopyWith<_$QuizzArchiveModelImpl> get copyWith =>
      __$$QuizzArchiveModelImplCopyWithImpl<_$QuizzArchiveModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizzArchiveModelImplToJson(
      this,
    );
  }
}

abstract class _QuizzArchiveModel implements QuizzArchiveModel {
  const factory _QuizzArchiveModel(
      {required final String quizId,
      required final String quizTitle,
      required final String quizDescription,
      required final String participationDateUtc,
      required final String status,
      required final List<QuizzArchiveQuestionModel> questions,
      required final List<QuizzArchiveUserAnswerModel> userAnswers,
      final QuizzArchiveQuizResultModel quizResult}) = _$QuizzArchiveModelImpl;

  factory _QuizzArchiveModel.fromJson(Map<String, dynamic> json) =
      _$QuizzArchiveModelImpl.fromJson;

  @override
  String get quizId;
  @override
  String get quizTitle;
  @override
  String get quizDescription;
  @override
  String get participationDateUtc;
  @override
  String get status;
  @override
  List<QuizzArchiveQuestionModel> get questions;
  @override
  List<QuizzArchiveUserAnswerModel> get userAnswers;
  @override
  QuizzArchiveQuizResultModel get quizResult;

  /// Create a copy of QuizzArchiveModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizzArchiveModelImplCopyWith<_$QuizzArchiveModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
