// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_quiz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubmitQuizModel _$SubmitQuizModelFromJson(Map<String, dynamic> json) {
  return _SubmitQuizModel.fromJson(json);
}

/// @nodoc
mixin _$SubmitQuizModel {
  String get quizParticipationId => throw _privateConstructorUsedError;
  List<String> get questionsId => throw _privateConstructorUsedError;
  List<String> get answersId => throw _privateConstructorUsedError;

  /// Serializes this SubmitQuizModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmitQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitQuizModelCopyWith<SubmitQuizModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitQuizModelCopyWith<$Res> {
  factory $SubmitQuizModelCopyWith(
          SubmitQuizModel value, $Res Function(SubmitQuizModel) then) =
      _$SubmitQuizModelCopyWithImpl<$Res, SubmitQuizModel>;
  @useResult
  $Res call(
      {String quizParticipationId,
      List<String> questionsId,
      List<String> answersId});
}

/// @nodoc
class _$SubmitQuizModelCopyWithImpl<$Res, $Val extends SubmitQuizModel>
    implements $SubmitQuizModelCopyWith<$Res> {
  _$SubmitQuizModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizParticipationId = null,
    Object? questionsId = null,
    Object? answersId = null,
  }) {
    return _then(_value.copyWith(
      quizParticipationId: null == quizParticipationId
          ? _value.quizParticipationId
          : quizParticipationId // ignore: cast_nullable_to_non_nullable
              as String,
      questionsId: null == questionsId
          ? _value.questionsId
          : questionsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answersId: null == answersId
          ? _value.answersId
          : answersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitQuizModelImplCopyWith<$Res>
    implements $SubmitQuizModelCopyWith<$Res> {
  factory _$$SubmitQuizModelImplCopyWith(_$SubmitQuizModelImpl value,
          $Res Function(_$SubmitQuizModelImpl) then) =
      __$$SubmitQuizModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String quizParticipationId,
      List<String> questionsId,
      List<String> answersId});
}

/// @nodoc
class __$$SubmitQuizModelImplCopyWithImpl<$Res>
    extends _$SubmitQuizModelCopyWithImpl<$Res, _$SubmitQuizModelImpl>
    implements _$$SubmitQuizModelImplCopyWith<$Res> {
  __$$SubmitQuizModelImplCopyWithImpl(
      _$SubmitQuizModelImpl _value, $Res Function(_$SubmitQuizModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizParticipationId = null,
    Object? questionsId = null,
    Object? answersId = null,
  }) {
    return _then(_$SubmitQuizModelImpl(
      quizParticipationId: null == quizParticipationId
          ? _value.quizParticipationId
          : quizParticipationId // ignore: cast_nullable_to_non_nullable
              as String,
      questionsId: null == questionsId
          ? _value._questionsId
          : questionsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answersId: null == answersId
          ? _value._answersId
          : answersId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmitQuizModelImpl implements _SubmitQuizModel {
  const _$SubmitQuizModelImpl(
      {required this.quizParticipationId,
      required final List<String> questionsId,
      required final List<String> answersId})
      : _questionsId = questionsId,
        _answersId = answersId;

  factory _$SubmitQuizModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmitQuizModelImplFromJson(json);

  @override
  final String quizParticipationId;
  final List<String> _questionsId;
  @override
  List<String> get questionsId {
    if (_questionsId is EqualUnmodifiableListView) return _questionsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionsId);
  }

  final List<String> _answersId;
  @override
  List<String> get answersId {
    if (_answersId is EqualUnmodifiableListView) return _answersId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answersId);
  }

  @override
  String toString() {
    return 'SubmitQuizModel(quizParticipationId: $quizParticipationId, questionsId: $questionsId, answersId: $answersId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitQuizModelImpl &&
            (identical(other.quizParticipationId, quizParticipationId) ||
                other.quizParticipationId == quizParticipationId) &&
            const DeepCollectionEquality()
                .equals(other._questionsId, _questionsId) &&
            const DeepCollectionEquality()
                .equals(other._answersId, _answersId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quizParticipationId,
      const DeepCollectionEquality().hash(_questionsId),
      const DeepCollectionEquality().hash(_answersId));

  /// Create a copy of SubmitQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitQuizModelImplCopyWith<_$SubmitQuizModelImpl> get copyWith =>
      __$$SubmitQuizModelImplCopyWithImpl<_$SubmitQuizModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitQuizModelImplToJson(
      this,
    );
  }
}

abstract class _SubmitQuizModel implements SubmitQuizModel {
  const factory _SubmitQuizModel(
      {required final String quizParticipationId,
      required final List<String> questionsId,
      required final List<String> answersId}) = _$SubmitQuizModelImpl;

  factory _SubmitQuizModel.fromJson(Map<String, dynamic> json) =
      _$SubmitQuizModelImpl.fromJson;

  @override
  String get quizParticipationId;
  @override
  List<String> get questionsId;
  @override
  List<String> get answersId;

  /// Create a copy of SubmitQuizModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitQuizModelImplCopyWith<_$SubmitQuizModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
