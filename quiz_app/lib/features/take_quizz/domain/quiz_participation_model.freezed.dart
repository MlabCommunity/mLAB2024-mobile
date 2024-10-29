// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_participation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizParticipationModel _$QuizParticipationModelFromJson(
    Map<String, dynamic> json) {
  return _QuizParticipationModel.fromJson(json);
}

/// @nodoc
mixin _$QuizParticipationModel {
  String get id => throw _privateConstructorUsedError;
  @DateTimeJsonConverter()
  DateTime get participationDate => throw _privateConstructorUsedError;
  QuizResponseModel get quizResponse => throw _privateConstructorUsedError;

  /// Serializes this QuizParticipationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizParticipationModelCopyWith<QuizParticipationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizParticipationModelCopyWith<$Res> {
  factory $QuizParticipationModelCopyWith(QuizParticipationModel value,
          $Res Function(QuizParticipationModel) then) =
      _$QuizParticipationModelCopyWithImpl<$Res, QuizParticipationModel>;
  @useResult
  $Res call(
      {String id,
      @DateTimeJsonConverter() DateTime participationDate,
      QuizResponseModel quizResponse});

  $QuizResponseModelCopyWith<$Res> get quizResponse;
}

/// @nodoc
class _$QuizParticipationModelCopyWithImpl<$Res,
        $Val extends QuizParticipationModel>
    implements $QuizParticipationModelCopyWith<$Res> {
  _$QuizParticipationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participationDate = null,
    Object? quizResponse = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participationDate: null == participationDate
          ? _value.participationDate
          : participationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quizResponse: null == quizResponse
          ? _value.quizResponse
          : quizResponse // ignore: cast_nullable_to_non_nullable
              as QuizResponseModel,
    ) as $Val);
  }

  /// Create a copy of QuizParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuizResponseModelCopyWith<$Res> get quizResponse {
    return $QuizResponseModelCopyWith<$Res>(_value.quizResponse, (value) {
      return _then(_value.copyWith(quizResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuizParticipationModelImplCopyWith<$Res>
    implements $QuizParticipationModelCopyWith<$Res> {
  factory _$$QuizParticipationModelImplCopyWith(
          _$QuizParticipationModelImpl value,
          $Res Function(_$QuizParticipationModelImpl) then) =
      __$$QuizParticipationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeJsonConverter() DateTime participationDate,
      QuizResponseModel quizResponse});

  @override
  $QuizResponseModelCopyWith<$Res> get quizResponse;
}

/// @nodoc
class __$$QuizParticipationModelImplCopyWithImpl<$Res>
    extends _$QuizParticipationModelCopyWithImpl<$Res,
        _$QuizParticipationModelImpl>
    implements _$$QuizParticipationModelImplCopyWith<$Res> {
  __$$QuizParticipationModelImplCopyWithImpl(
      _$QuizParticipationModelImpl _value,
      $Res Function(_$QuizParticipationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? participationDate = null,
    Object? quizResponse = null,
  }) {
    return _then(_$QuizParticipationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      participationDate: null == participationDate
          ? _value.participationDate
          : participationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      quizResponse: null == quizResponse
          ? _value.quizResponse
          : quizResponse // ignore: cast_nullable_to_non_nullable
              as QuizResponseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizParticipationModelImpl implements _QuizParticipationModel {
  const _$QuizParticipationModelImpl(
      {required this.id,
      @DateTimeJsonConverter() required this.participationDate,
      required this.quizResponse});

  factory _$QuizParticipationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizParticipationModelImplFromJson(json);

  @override
  final String id;
  @override
  @DateTimeJsonConverter()
  final DateTime participationDate;
  @override
  final QuizResponseModel quizResponse;

  @override
  String toString() {
    return 'QuizParticipationModel(id: $id, participationDate: $participationDate, quizResponse: $quizResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizParticipationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.participationDate, participationDate) ||
                other.participationDate == participationDate) &&
            (identical(other.quizResponse, quizResponse) ||
                other.quizResponse == quizResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, participationDate, quizResponse);

  /// Create a copy of QuizParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizParticipationModelImplCopyWith<_$QuizParticipationModelImpl>
      get copyWith => __$$QuizParticipationModelImplCopyWithImpl<
          _$QuizParticipationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizParticipationModelImplToJson(
      this,
    );
  }
}

abstract class _QuizParticipationModel implements QuizParticipationModel {
  const factory _QuizParticipationModel(
          {required final String id,
          @DateTimeJsonConverter() required final DateTime participationDate,
          required final QuizResponseModel quizResponse}) =
      _$QuizParticipationModelImpl;

  factory _QuizParticipationModel.fromJson(Map<String, dynamic> json) =
      _$QuizParticipationModelImpl.fromJson;

  @override
  String get id;
  @override
  @DateTimeJsonConverter()
  DateTime get participationDate;
  @override
  QuizResponseModel get quizResponse;

  /// Create a copy of QuizParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizParticipationModelImplCopyWith<_$QuizParticipationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
