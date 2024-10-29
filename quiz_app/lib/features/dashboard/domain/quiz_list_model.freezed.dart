// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizListModel _$QuizListModelFromJson(Map<String, dynamic> json) {
  return _QuizListModel.fromJson(json);
}

/// @nodoc
mixin _$QuizListModel {
  List<QuizDashboardModel> get items => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalItemsCount => throw _privateConstructorUsedError;
  int get itemsFrom => throw _privateConstructorUsedError;
  int get itemsTo => throw _privateConstructorUsedError;

  /// Serializes this QuizListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizListModelCopyWith<QuizListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizListModelCopyWith<$Res> {
  factory $QuizListModelCopyWith(
          QuizListModel value, $Res Function(QuizListModel) then) =
      _$QuizListModelCopyWithImpl<$Res, QuizListModel>;
  @useResult
  $Res call(
      {List<QuizDashboardModel> items,
      int totalPages,
      int totalItemsCount,
      int itemsFrom,
      int itemsTo});
}

/// @nodoc
class _$QuizListModelCopyWithImpl<$Res, $Val extends QuizListModel>
    implements $QuizListModelCopyWith<$Res> {
  _$QuizListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPages = null,
    Object? totalItemsCount = null,
    Object? itemsFrom = null,
    Object? itemsTo = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<QuizDashboardModel>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemsCount: null == totalItemsCount
          ? _value.totalItemsCount
          : totalItemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      itemsFrom: null == itemsFrom
          ? _value.itemsFrom
          : itemsFrom // ignore: cast_nullable_to_non_nullable
              as int,
      itemsTo: null == itemsTo
          ? _value.itemsTo
          : itemsTo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizListModelImplCopyWith<$Res>
    implements $QuizListModelCopyWith<$Res> {
  factory _$$QuizListModelImplCopyWith(
          _$QuizListModelImpl value, $Res Function(_$QuizListModelImpl) then) =
      __$$QuizListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<QuizDashboardModel> items,
      int totalPages,
      int totalItemsCount,
      int itemsFrom,
      int itemsTo});
}

/// @nodoc
class __$$QuizListModelImplCopyWithImpl<$Res>
    extends _$QuizListModelCopyWithImpl<$Res, _$QuizListModelImpl>
    implements _$$QuizListModelImplCopyWith<$Res> {
  __$$QuizListModelImplCopyWithImpl(
      _$QuizListModelImpl _value, $Res Function(_$QuizListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPages = null,
    Object? totalItemsCount = null,
    Object? itemsFrom = null,
    Object? itemsTo = null,
  }) {
    return _then(_$QuizListModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<QuizDashboardModel>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemsCount: null == totalItemsCount
          ? _value.totalItemsCount
          : totalItemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      itemsFrom: null == itemsFrom
          ? _value.itemsFrom
          : itemsFrom // ignore: cast_nullable_to_non_nullable
              as int,
      itemsTo: null == itemsTo
          ? _value.itemsTo
          : itemsTo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizListModelImpl implements _QuizListModel {
  const _$QuizListModelImpl(
      {required final List<QuizDashboardModel> items,
      required this.totalPages,
      required this.totalItemsCount,
      required this.itemsFrom,
      required this.itemsTo})
      : _items = items;

  factory _$QuizListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizListModelImplFromJson(json);

  final List<QuizDashboardModel> _items;
  @override
  List<QuizDashboardModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int totalPages;
  @override
  final int totalItemsCount;
  @override
  final int itemsFrom;
  @override
  final int itemsTo;

  @override
  String toString() {
    return 'QuizListModel(items: $items, totalPages: $totalPages, totalItemsCount: $totalItemsCount, itemsFrom: $itemsFrom, itemsTo: $itemsTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizListModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalItemsCount, totalItemsCount) ||
                other.totalItemsCount == totalItemsCount) &&
            (identical(other.itemsFrom, itemsFrom) ||
                other.itemsFrom == itemsFrom) &&
            (identical(other.itemsTo, itemsTo) || other.itemsTo == itemsTo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      totalPages,
      totalItemsCount,
      itemsFrom,
      itemsTo);

  /// Create a copy of QuizListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizListModelImplCopyWith<_$QuizListModelImpl> get copyWith =>
      __$$QuizListModelImplCopyWithImpl<_$QuizListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizListModelImplToJson(
      this,
    );
  }
}

abstract class _QuizListModel implements QuizListModel {
  const factory _QuizListModel(
      {required final List<QuizDashboardModel> items,
      required final int totalPages,
      required final int totalItemsCount,
      required final int itemsFrom,
      required final int itemsTo}) = _$QuizListModelImpl;

  factory _QuizListModel.fromJson(Map<String, dynamic> json) =
      _$QuizListModelImpl.fromJson;

  @override
  List<QuizDashboardModel> get items;
  @override
  int get totalPages;
  @override
  int get totalItemsCount;
  @override
  int get itemsFrom;
  @override
  int get itemsTo;

  /// Create a copy of QuizListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizListModelImplCopyWith<_$QuizListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
