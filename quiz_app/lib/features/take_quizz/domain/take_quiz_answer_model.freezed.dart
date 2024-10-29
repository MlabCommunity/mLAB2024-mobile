// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'take_quiz_answer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TakeQuizAnswerModel _$TakeQuizAnswerModelFromJson(Map<String, dynamic> json) {
  return _TakeQuizAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$TakeQuizAnswerModel {
  String get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Serializes this TakeQuizAnswerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TakeQuizAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TakeQuizAnswerModelCopyWith<TakeQuizAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TakeQuizAnswerModelCopyWith<$Res> {
  factory $TakeQuizAnswerModelCopyWith(
          TakeQuizAnswerModel value, $Res Function(TakeQuizAnswerModel) then) =
      _$TakeQuizAnswerModelCopyWithImpl<$Res, TakeQuizAnswerModel>;
  @useResult
  $Res call({String id, String content});
}

/// @nodoc
class _$TakeQuizAnswerModelCopyWithImpl<$Res, $Val extends TakeQuizAnswerModel>
    implements $TakeQuizAnswerModelCopyWith<$Res> {
  _$TakeQuizAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TakeQuizAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TakeQuizAnswerModelImplCopyWith<$Res>
    implements $TakeQuizAnswerModelCopyWith<$Res> {
  factory _$$TakeQuizAnswerModelImplCopyWith(_$TakeQuizAnswerModelImpl value,
          $Res Function(_$TakeQuizAnswerModelImpl) then) =
      __$$TakeQuizAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String content});
}

/// @nodoc
class __$$TakeQuizAnswerModelImplCopyWithImpl<$Res>
    extends _$TakeQuizAnswerModelCopyWithImpl<$Res, _$TakeQuizAnswerModelImpl>
    implements _$$TakeQuizAnswerModelImplCopyWith<$Res> {
  __$$TakeQuizAnswerModelImplCopyWithImpl(_$TakeQuizAnswerModelImpl _value,
      $Res Function(_$TakeQuizAnswerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TakeQuizAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
  }) {
    return _then(_$TakeQuizAnswerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TakeQuizAnswerModelImpl implements _TakeQuizAnswerModel {
  const _$TakeQuizAnswerModelImpl({required this.id, required this.content});

  factory _$TakeQuizAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TakeQuizAnswerModelImplFromJson(json);

  @override
  final String id;
  @override
  final String content;

  @override
  String toString() {
    return 'TakeQuizAnswerModel(id: $id, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TakeQuizAnswerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content);

  /// Create a copy of TakeQuizAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TakeQuizAnswerModelImplCopyWith<_$TakeQuizAnswerModelImpl> get copyWith =>
      __$$TakeQuizAnswerModelImplCopyWithImpl<_$TakeQuizAnswerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TakeQuizAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _TakeQuizAnswerModel implements TakeQuizAnswerModel {
  const factory _TakeQuizAnswerModel(
      {required final String id,
      required final String content}) = _$TakeQuizAnswerModelImpl;

  factory _TakeQuizAnswerModel.fromJson(Map<String, dynamic> json) =
      _$TakeQuizAnswerModelImpl.fromJson;

  @override
  String get id;
  @override
  String get content;

  /// Create a copy of TakeQuizAnswerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TakeQuizAnswerModelImplCopyWith<_$TakeQuizAnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
