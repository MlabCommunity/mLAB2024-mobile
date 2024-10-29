// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizDashboardModel _$QuizDashboardModelFromJson(Map<String, dynamic> json) {
  return _QuizDashboardModel.fromJson(json);
}

/// @nodoc
mixin _$QuizDashboardModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  QuizAvailability get availability => throw _privateConstructorUsedError;
  QuizStatus get status => throw _privateConstructorUsedError;
  int get totalQuestions => throw _privateConstructorUsedError;

  /// Serializes this QuizDashboardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizDashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizDashboardModelCopyWith<QuizDashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizDashboardModelCopyWith<$Res> {
  factory $QuizDashboardModelCopyWith(
          QuizDashboardModel value, $Res Function(QuizDashboardModel) then) =
      _$QuizDashboardModelCopyWithImpl<$Res, QuizDashboardModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      QuizAvailability availability,
      QuizStatus status,
      int totalQuestions});
}

/// @nodoc
class _$QuizDashboardModelCopyWithImpl<$Res, $Val extends QuizDashboardModel>
    implements $QuizDashboardModelCopyWith<$Res> {
  _$QuizDashboardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizDashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? availability = null,
    Object? status = null,
    Object? totalQuestions = null,
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
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as QuizAvailability,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizDashboardModelImplCopyWith<$Res>
    implements $QuizDashboardModelCopyWith<$Res> {
  factory _$$QuizDashboardModelImplCopyWith(_$QuizDashboardModelImpl value,
          $Res Function(_$QuizDashboardModelImpl) then) =
      __$$QuizDashboardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      QuizAvailability availability,
      QuizStatus status,
      int totalQuestions});
}

/// @nodoc
class __$$QuizDashboardModelImplCopyWithImpl<$Res>
    extends _$QuizDashboardModelCopyWithImpl<$Res, _$QuizDashboardModelImpl>
    implements _$$QuizDashboardModelImplCopyWith<$Res> {
  __$$QuizDashboardModelImplCopyWithImpl(_$QuizDashboardModelImpl _value,
      $Res Function(_$QuizDashboardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizDashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? availability = null,
    Object? status = null,
    Object? totalQuestions = null,
  }) {
    return _then(_$QuizDashboardModelImpl(
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
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as QuizAvailability,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizDashboardModelImpl implements _QuizDashboardModel {
  const _$QuizDashboardModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.availability,
      required this.status,
      required this.totalQuestions});

  factory _$QuizDashboardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizDashboardModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final QuizAvailability availability;
  @override
  final QuizStatus status;
  @override
  final int totalQuestions;

  @override
  String toString() {
    return 'QuizDashboardModel(id: $id, title: $title, description: $description, availability: $availability, status: $status, totalQuestions: $totalQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizDashboardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      availability, status, totalQuestions);

  /// Create a copy of QuizDashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizDashboardModelImplCopyWith<_$QuizDashboardModelImpl> get copyWith =>
      __$$QuizDashboardModelImplCopyWithImpl<_$QuizDashboardModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizDashboardModelImplToJson(
      this,
    );
  }
}

abstract class _QuizDashboardModel implements QuizDashboardModel {
  const factory _QuizDashboardModel(
      {required final String id,
      required final String title,
      required final String description,
      required final QuizAvailability availability,
      required final QuizStatus status,
      required final int totalQuestions}) = _$QuizDashboardModelImpl;

  factory _QuizDashboardModel.fromJson(Map<String, dynamic> json) =
      _$QuizDashboardModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  QuizAvailability get availability;
  @override
  QuizStatus get status;
  @override
  int get totalQuestions;

  /// Create a copy of QuizDashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizDashboardModelImplCopyWith<_$QuizDashboardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
