// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quizz_take_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizzTakeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(QuizResultModel quizResult) resultReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(QuizResultModel quizResult)? resultReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(QuizResultModel quizResult)? resultReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ResultReceived value) resultReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResultReceived value)? resultReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_ResultReceived value)? resultReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizzTakeStateCopyWith<$Res> {
  factory $QuizzTakeStateCopyWith(
          QuizzTakeState value, $Res Function(QuizzTakeState) then) =
      _$QuizzTakeStateCopyWithImpl<$Res, QuizzTakeState>;
}

/// @nodoc
class _$QuizzTakeStateCopyWithImpl<$Res, $Val extends QuizzTakeState>
    implements $QuizzTakeStateCopyWith<$Res> {
  _$QuizzTakeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$QuizzTakeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'QuizzTakeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(QuizResultModel quizResult) resultReceived,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(QuizResultModel quizResult)? resultReceived,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(QuizResultModel quizResult)? resultReceived,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ResultReceived value) resultReceived,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResultReceived value)? resultReceived,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_ResultReceived value)? resultReceived,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuizzTakeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$QuizzTakeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'QuizzTakeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(QuizResultModel quizResult) resultReceived,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(QuizResultModel quizResult)? resultReceived,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(QuizResultModel quizResult)? resultReceived,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ResultReceived value) resultReceived,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResultReceived value)? resultReceived,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_ResultReceived value)? resultReceived,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QuizzTakeState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {QuizParticipationModel participationModel,
      List<UserAnswerModel> userAnswers,
      int currentStep});

  $QuizParticipationModelCopyWith<$Res> get participationModel;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$QuizzTakeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? participationModel = null,
    Object? userAnswers = null,
    Object? currentStep = null,
  }) {
    return _then(_$LoadedImpl(
      participationModel: null == participationModel
          ? _value.participationModel
          : participationModel // ignore: cast_nullable_to_non_nullable
              as QuizParticipationModel,
      userAnswers: null == userAnswers
          ? _value._userAnswers
          : userAnswers // ignore: cast_nullable_to_non_nullable
              as List<UserAnswerModel>,
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuizParticipationModelCopyWith<$Res> get participationModel {
    return $QuizParticipationModelCopyWith<$Res>(_value.participationModel,
        (value) {
      return _then(_value.copyWith(participationModel: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.participationModel,
      required final List<UserAnswerModel> userAnswers,
      required this.currentStep})
      : _userAnswers = userAnswers;

  @override
  final QuizParticipationModel participationModel;
  final List<UserAnswerModel> _userAnswers;
  @override
  List<UserAnswerModel> get userAnswers {
    if (_userAnswers is EqualUnmodifiableListView) return _userAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userAnswers);
  }

  @override
  final int currentStep;

  @override
  String toString() {
    return 'QuizzTakeState.loaded(participationModel: $participationModel, userAnswers: $userAnswers, currentStep: $currentStep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.participationModel, participationModel) ||
                other.participationModel == participationModel) &&
            const DeepCollectionEquality()
                .equals(other._userAnswers, _userAnswers) &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, participationModel,
      const DeepCollectionEquality().hash(_userAnswers), currentStep);

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(QuizResultModel quizResult) resultReceived,
  }) {
    return loaded(participationModel, userAnswers, currentStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(QuizResultModel quizResult)? resultReceived,
  }) {
    return loaded?.call(participationModel, userAnswers, currentStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(QuizResultModel quizResult)? resultReceived,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(participationModel, userAnswers, currentStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ResultReceived value) resultReceived,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResultReceived value)? resultReceived,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_ResultReceived value)? resultReceived,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements QuizzTakeState {
  const factory _Loaded(
      {required final QuizParticipationModel participationModel,
      required final List<UserAnswerModel> userAnswers,
      required final int currentStep}) = _$LoadedImpl;

  QuizParticipationModel get participationModel;
  List<UserAnswerModel> get userAnswers;
  int get currentStep;

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$QuizzTakeStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QuizzTakeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(QuizResultModel quizResult) resultReceived,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(QuizResultModel quizResult)? resultReceived,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(QuizResultModel quizResult)? resultReceived,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ResultReceived value) resultReceived,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResultReceived value)? resultReceived,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_ResultReceived value)? resultReceived,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements QuizzTakeState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultReceivedImplCopyWith<$Res> {
  factory _$$ResultReceivedImplCopyWith(_$ResultReceivedImpl value,
          $Res Function(_$ResultReceivedImpl) then) =
      __$$ResultReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({QuizResultModel quizResult});

  $QuizResultModelCopyWith<$Res> get quizResult;
}

/// @nodoc
class __$$ResultReceivedImplCopyWithImpl<$Res>
    extends _$QuizzTakeStateCopyWithImpl<$Res, _$ResultReceivedImpl>
    implements _$$ResultReceivedImplCopyWith<$Res> {
  __$$ResultReceivedImplCopyWithImpl(
      _$ResultReceivedImpl _value, $Res Function(_$ResultReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizResult = null,
  }) {
    return _then(_$ResultReceivedImpl(
      quizResult: null == quizResult
          ? _value.quizResult
          : quizResult // ignore: cast_nullable_to_non_nullable
              as QuizResultModel,
    ));
  }

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuizResultModelCopyWith<$Res> get quizResult {
    return $QuizResultModelCopyWith<$Res>(_value.quizResult, (value) {
      return _then(_value.copyWith(quizResult: value));
    });
  }
}

/// @nodoc

class _$ResultReceivedImpl implements _ResultReceived {
  const _$ResultReceivedImpl({required this.quizResult});

  @override
  final QuizResultModel quizResult;

  @override
  String toString() {
    return 'QuizzTakeState.resultReceived(quizResult: $quizResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultReceivedImpl &&
            (identical(other.quizResult, quizResult) ||
                other.quizResult == quizResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quizResult);

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultReceivedImplCopyWith<_$ResultReceivedImpl> get copyWith =>
      __$$ResultReceivedImplCopyWithImpl<_$ResultReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)
        loaded,
    required TResult Function(String message) error,
    required TResult Function(QuizResultModel quizResult) resultReceived,
  }) {
    return resultReceived(quizResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult? Function(String message)? error,
    TResult? Function(QuizResultModel quizResult)? resultReceived,
  }) {
    return resultReceived?.call(quizResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(QuizParticipationModel participationModel,
            List<UserAnswerModel> userAnswers, int currentStep)?
        loaded,
    TResult Function(String message)? error,
    TResult Function(QuizResultModel quizResult)? resultReceived,
    required TResult orElse(),
  }) {
    if (resultReceived != null) {
      return resultReceived(quizResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_ResultReceived value) resultReceived,
  }) {
    return resultReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_ResultReceived value)? resultReceived,
  }) {
    return resultReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_ResultReceived value)? resultReceived,
    required TResult orElse(),
  }) {
    if (resultReceived != null) {
      return resultReceived(this);
    }
    return orElse();
  }
}

abstract class _ResultReceived implements QuizzTakeState {
  const factory _ResultReceived({required final QuizResultModel quizResult}) =
      _$ResultReceivedImpl;

  QuizResultModel get quizResult;

  /// Create a copy of QuizzTakeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultReceivedImplCopyWith<_$ResultReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
