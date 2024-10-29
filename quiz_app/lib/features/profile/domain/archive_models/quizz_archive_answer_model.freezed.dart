// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quizz_archive_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizzArchiveAnswerModel _$QuizzArchiveAnswerModelFromJson(
    Map<String, dynamic> json) {
  return _QuizzArchiveAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$QuizzArchiveAnswerModel {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  /// Serializes this QuizzArchiveAnswerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizzArchiveAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizzArchiveAnswerModelCopyWith<QuizzArchiveAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzArchiveAnswerModelCopyWith<$Res> {
  factory $QuizzArchiveAnswerModelCopyWith(QuizzArchiveAnswerModel value,
          $Res Function(QuizzArchiveAnswerModel) then) =
      _$QuizzArchiveAnswerModelCopyWithImpl<$Res, QuizzArchiveAnswerModel>;
  @useResult
  $Res call({String id, String content, bool isCorrect});
}

/// @nodoc
class _$QuizzArchiveAnswerModelCopyWithImpl<$Res,
        $Val extends QuizzArchiveAnswerModel>
    implements $QuizzArchiveAnswerModelCopyWith<$Res> {
  _$QuizzArchiveAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizzArchiveAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? isCorrect = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizzArchiveAnswerModelImplCopyWith<$Res>
    implements $QuizzArchiveAnswerModelCopyWith<$Res> {
  factory _$$QuizzArchiveAnswerModelImplCopyWith(
          _$QuizzArchiveAnswerModelImpl value,
          $Res Function(_$QuizzArchiveAnswerModelImpl) then) =
      __$$QuizzArchiveAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String content, bool isCorrect});
}

/// @nodoc
class __$$QuizzArchiveAnswerModelImplCopyWithImpl<$Res>
    extends _$QuizzArchiveAnswerModelCopyWithImpl<$Res,
        _$QuizzArchiveAnswerModelImpl>
    implements _$$QuizzArchiveAnswerModelImplCopyWith<$Res> {
  __$$QuizzArchiveAnswerModelImplCopyWithImpl(
      _$QuizzArchiveAnswerModelImpl _value,
      $Res Function(_$QuizzArchiveAnswerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizzArchiveAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? isCorrect = null,
  }) {
    return _then(_$QuizzArchiveAnswerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizzArchiveAnswerModelImpl implements _QuizzArchiveAnswerModel {
  const _$QuizzArchiveAnswerModelImpl(
      {required this.id, required this.content, required this.isCorrect});

  factory _$QuizzArchiveAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizzArchiveAnswerModelImplFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final bool isCorrect;

  @override
  String toString() {
    return 'QuizzArchiveAnswerModel(id: $id, content: $content, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizzArchiveAnswerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, isCorrect);

  /// Create a copy of QuizzArchiveAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizzArchiveAnswerModelImplCopyWith<_$QuizzArchiveAnswerModelImpl>
      get copyWith => __$$QuizzArchiveAnswerModelImplCopyWithImpl<
          _$QuizzArchiveAnswerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizzArchiveAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _QuizzArchiveAnswerModel implements QuizzArchiveAnswerModel {
  const factory _QuizzArchiveAnswerModel(
      {required final String id,
      required final String content,
      required final bool isCorrect}) = _$QuizzArchiveAnswerModelImpl;

  factory _QuizzArchiveAnswerModel.fromJson(Map<String, dynamic> json) =
      _$QuizzArchiveAnswerModelImpl.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  bool get isCorrect;

  /// Create a copy of QuizzArchiveAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizzArchiveAnswerModelImplCopyWith<_$QuizzArchiveAnswerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
