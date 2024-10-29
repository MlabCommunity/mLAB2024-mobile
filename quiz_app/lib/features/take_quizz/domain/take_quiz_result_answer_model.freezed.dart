// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'take_quiz_result_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TakeQuizResultAnswerModel _$TakeQuizResultAnswerModelFromJson(
    Map<String, dynamic> json) {
  return _TakeQuizResultAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$TakeQuizResultAnswerModel {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  /// Serializes this TakeQuizResultAnswerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TakeQuizResultAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TakeQuizResultAnswerModelCopyWith<TakeQuizResultAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakeQuizResultAnswerModelCopyWith<$Res> {
  factory $TakeQuizResultAnswerModelCopyWith(TakeQuizResultAnswerModel value,
          $Res Function(TakeQuizResultAnswerModel) then) =
      _$TakeQuizResultAnswerModelCopyWithImpl<$Res, TakeQuizResultAnswerModel>;
  @useResult
  $Res call({String id, String content, bool isCorrect});
}

/// @nodoc
class _$TakeQuizResultAnswerModelCopyWithImpl<$Res,
        $Val extends TakeQuizResultAnswerModel>
    implements $TakeQuizResultAnswerModelCopyWith<$Res> {
  _$TakeQuizResultAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TakeQuizResultAnswerModel
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
abstract class _$$TakeQuizResultAnswerModelImplCopyWith<$Res>
    implements $TakeQuizResultAnswerModelCopyWith<$Res> {
  factory _$$TakeQuizResultAnswerModelImplCopyWith(
          _$TakeQuizResultAnswerModelImpl value,
          $Res Function(_$TakeQuizResultAnswerModelImpl) then) =
      __$$TakeQuizResultAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String content, bool isCorrect});
}

/// @nodoc
class __$$TakeQuizResultAnswerModelImplCopyWithImpl<$Res>
    extends _$TakeQuizResultAnswerModelCopyWithImpl<$Res,
        _$TakeQuizResultAnswerModelImpl>
    implements _$$TakeQuizResultAnswerModelImplCopyWith<$Res> {
  __$$TakeQuizResultAnswerModelImplCopyWithImpl(
      _$TakeQuizResultAnswerModelImpl _value,
      $Res Function(_$TakeQuizResultAnswerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TakeQuizResultAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? isCorrect = null,
  }) {
    return _then(_$TakeQuizResultAnswerModelImpl(
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
class _$TakeQuizResultAnswerModelImpl implements _TakeQuizResultAnswerModel {
  const _$TakeQuizResultAnswerModelImpl(
      {required this.id, required this.content, required this.isCorrect});

  factory _$TakeQuizResultAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TakeQuizResultAnswerModelImplFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final bool isCorrect;

  @override
  String toString() {
    return 'TakeQuizResultAnswerModel(id: $id, content: $content, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakeQuizResultAnswerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, isCorrect);

  /// Create a copy of TakeQuizResultAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TakeQuizResultAnswerModelImplCopyWith<_$TakeQuizResultAnswerModelImpl>
      get copyWith => __$$TakeQuizResultAnswerModelImplCopyWithImpl<
          _$TakeQuizResultAnswerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TakeQuizResultAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _TakeQuizResultAnswerModel implements TakeQuizResultAnswerModel {
  const factory _TakeQuizResultAnswerModel(
      {required final String id,
      required final String content,
      required final bool isCorrect}) = _$TakeQuizResultAnswerModelImpl;

  factory _TakeQuizResultAnswerModel.fromJson(Map<String, dynamic> json) =
      _$TakeQuizResultAnswerModelImpl.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  bool get isCorrect;

  /// Create a copy of TakeQuizResultAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TakeQuizResultAnswerModelImplCopyWith<_$TakeQuizResultAnswerModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
