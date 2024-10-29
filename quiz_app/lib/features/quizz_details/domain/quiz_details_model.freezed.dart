// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizDetailsModel _$QuizDetailsModelFromJson(Map<String, dynamic> json) {
  return _QuizDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$QuizDetailsModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  QuizAvailability get availability => throw _privateConstructorUsedError;
  String get shareLink => throw _privateConstructorUsedError;
  QuizStatus get status => throw _privateConstructorUsedError;
  List<QuestionDetailsModel> get questions =>
      throw _privateConstructorUsedError;
  ParticipantsListModel get participants => throw _privateConstructorUsedError;

  /// Serializes this QuizDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizDetailsModelCopyWith<QuizDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizDetailsModelCopyWith<$Res> {
  factory $QuizDetailsModelCopyWith(
          QuizDetailsModel value, $Res Function(QuizDetailsModel) then) =
      _$QuizDetailsModelCopyWithImpl<$Res, QuizDetailsModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      QuizAvailability availability,
      String shareLink,
      QuizStatus status,
      List<QuestionDetailsModel> questions,
      ParticipantsListModel participants});

  $ParticipantsListModelCopyWith<$Res> get participants;
}

/// @nodoc
class _$QuizDetailsModelCopyWithImpl<$Res, $Val extends QuizDetailsModel>
    implements $QuizDetailsModelCopyWith<$Res> {
  _$QuizDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? availability = null,
    Object? shareLink = null,
    Object? status = null,
    Object? questions = null,
    Object? participants = null,
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
      shareLink: null == shareLink
          ? _value.shareLink
          : shareLink // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionDetailsModel>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as ParticipantsListModel,
    ) as $Val);
  }

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ParticipantsListModelCopyWith<$Res> get participants {
    return $ParticipantsListModelCopyWith<$Res>(_value.participants, (value) {
      return _then(_value.copyWith(participants: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuizDetailsModelImplCopyWith<$Res>
    implements $QuizDetailsModelCopyWith<$Res> {
  factory _$$QuizDetailsModelImplCopyWith(_$QuizDetailsModelImpl value,
          $Res Function(_$QuizDetailsModelImpl) then) =
      __$$QuizDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      QuizAvailability availability,
      String shareLink,
      QuizStatus status,
      List<QuestionDetailsModel> questions,
      ParticipantsListModel participants});

  @override
  $ParticipantsListModelCopyWith<$Res> get participants;
}

/// @nodoc
class __$$QuizDetailsModelImplCopyWithImpl<$Res>
    extends _$QuizDetailsModelCopyWithImpl<$Res, _$QuizDetailsModelImpl>
    implements _$$QuizDetailsModelImplCopyWith<$Res> {
  __$$QuizDetailsModelImplCopyWithImpl(_$QuizDetailsModelImpl _value,
      $Res Function(_$QuizDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? availability = null,
    Object? shareLink = null,
    Object? status = null,
    Object? questions = null,
    Object? participants = null,
  }) {
    return _then(_$QuizDetailsModelImpl(
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
      shareLink: null == shareLink
          ? _value.shareLink
          : shareLink // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as QuizStatus,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionDetailsModel>,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as ParticipantsListModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizDetailsModelImpl implements _QuizDetailsModel {
  const _$QuizDetailsModelImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.availability,
      required this.shareLink,
      required this.status,
      required final List<QuestionDetailsModel> questions,
      required this.participants})
      : _questions = questions;

  factory _$QuizDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizDetailsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final QuizAvailability availability;
  @override
  final String shareLink;
  @override
  final QuizStatus status;
  final List<QuestionDetailsModel> _questions;
  @override
  List<QuestionDetailsModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final ParticipantsListModel participants;

  @override
  String toString() {
    return 'QuizDetailsModel(id: $id, title: $title, description: $description, availability: $availability, shareLink: $shareLink, status: $status, questions: $questions, participants: $participants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.shareLink, shareLink) ||
                other.shareLink == shareLink) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.participants, participants) ||
                other.participants == participants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      availability,
      shareLink,
      status,
      const DeepCollectionEquality().hash(_questions),
      participants);

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizDetailsModelImplCopyWith<_$QuizDetailsModelImpl> get copyWith =>
      __$$QuizDetailsModelImplCopyWithImpl<_$QuizDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _QuizDetailsModel implements QuizDetailsModel {
  const factory _QuizDetailsModel(
          {required final String id,
          required final String title,
          required final String description,
          required final QuizAvailability availability,
          required final String shareLink,
          required final QuizStatus status,
          required final List<QuestionDetailsModel> questions,
          required final ParticipantsListModel participants}) =
      _$QuizDetailsModelImpl;

  factory _QuizDetailsModel.fromJson(Map<String, dynamic> json) =
      _$QuizDetailsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  QuizAvailability get availability;
  @override
  String get shareLink;
  @override
  QuizStatus get status;
  @override
  List<QuestionDetailsModel> get questions;
  @override
  ParticipantsListModel get participants;

  /// Create a copy of QuizDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizDetailsModelImplCopyWith<_$QuizDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
