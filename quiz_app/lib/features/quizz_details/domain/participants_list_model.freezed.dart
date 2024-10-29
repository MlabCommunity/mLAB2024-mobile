// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participants_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ParticipantsListModel _$ParticipantsListModelFromJson(
    Map<String, dynamic> json) {
  return _ParticipantsListModel.fromJson(json);
}

/// @nodoc
mixin _$ParticipantsListModel {
  int get totalPages => throw _privateConstructorUsedError;
  int get totalItemsCount => throw _privateConstructorUsedError;
  int get itemsFrom => throw _privateConstructorUsedError;
  int get itemsTo => throw _privateConstructorUsedError;
  List<ParticipantModel> get items => throw _privateConstructorUsedError;

  /// Serializes this ParticipantsListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParticipantsListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipantsListModelCopyWith<ParticipantsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantsListModelCopyWith<$Res> {
  factory $ParticipantsListModelCopyWith(ParticipantsListModel value,
          $Res Function(ParticipantsListModel) then) =
      _$ParticipantsListModelCopyWithImpl<$Res, ParticipantsListModel>;
  @useResult
  $Res call(
      {int totalPages,
      int totalItemsCount,
      int itemsFrom,
      int itemsTo,
      List<ParticipantModel> items});
}

/// @nodoc
class _$ParticipantsListModelCopyWithImpl<$Res,
        $Val extends ParticipantsListModel>
    implements $ParticipantsListModelCopyWith<$Res> {
  _$ParticipantsListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipantsListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? totalItemsCount = null,
    Object? itemsFrom = null,
    Object? itemsTo = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
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
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ParticipantModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipantsListModelImplCopyWith<$Res>
    implements $ParticipantsListModelCopyWith<$Res> {
  factory _$$ParticipantsListModelImplCopyWith(
          _$ParticipantsListModelImpl value,
          $Res Function(_$ParticipantsListModelImpl) then) =
      __$$ParticipantsListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalPages,
      int totalItemsCount,
      int itemsFrom,
      int itemsTo,
      List<ParticipantModel> items});
}

/// @nodoc
class __$$ParticipantsListModelImplCopyWithImpl<$Res>
    extends _$ParticipantsListModelCopyWithImpl<$Res,
        _$ParticipantsListModelImpl>
    implements _$$ParticipantsListModelImplCopyWith<$Res> {
  __$$ParticipantsListModelImplCopyWithImpl(_$ParticipantsListModelImpl _value,
      $Res Function(_$ParticipantsListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParticipantsListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? totalItemsCount = null,
    Object? itemsFrom = null,
    Object? itemsTo = null,
    Object? items = null,
  }) {
    return _then(_$ParticipantsListModelImpl(
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
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ParticipantModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParticipantsListModelImpl implements _ParticipantsListModel {
  const _$ParticipantsListModelImpl(
      {required this.totalPages,
      required this.totalItemsCount,
      required this.itemsFrom,
      required this.itemsTo,
      required final List<ParticipantModel> items})
      : _items = items;

  factory _$ParticipantsListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantsListModelImplFromJson(json);

  @override
  final int totalPages;
  @override
  final int totalItemsCount;
  @override
  final int itemsFrom;
  @override
  final int itemsTo;
  final List<ParticipantModel> _items;
  @override
  List<ParticipantModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ParticipantsListModel(totalPages: $totalPages, totalItemsCount: $totalItemsCount, itemsFrom: $itemsFrom, itemsTo: $itemsTo, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantsListModelImpl &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalItemsCount, totalItemsCount) ||
                other.totalItemsCount == totalItemsCount) &&
            (identical(other.itemsFrom, itemsFrom) ||
                other.itemsFrom == itemsFrom) &&
            (identical(other.itemsTo, itemsTo) || other.itemsTo == itemsTo) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalPages, totalItemsCount,
      itemsFrom, itemsTo, const DeepCollectionEquality().hash(_items));

  /// Create a copy of ParticipantsListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantsListModelImplCopyWith<_$ParticipantsListModelImpl>
      get copyWith => __$$ParticipantsListModelImplCopyWithImpl<
          _$ParticipantsListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantsListModelImplToJson(
      this,
    );
  }
}

abstract class _ParticipantsListModel implements ParticipantsListModel {
  const factory _ParticipantsListModel(
          {required final int totalPages,
          required final int totalItemsCount,
          required final int itemsFrom,
          required final int itemsTo,
          required final List<ParticipantModel> items}) =
      _$ParticipantsListModelImpl;

  factory _ParticipantsListModel.fromJson(Map<String, dynamic> json) =
      _$ParticipantsListModelImpl.fromJson;

  @override
  int get totalPages;
  @override
  int get totalItemsCount;
  @override
  int get itemsFrom;
  @override
  int get itemsTo;
  @override
  List<ParticipantModel> get items;

  /// Create a copy of ParticipantsListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipantsListModelImplCopyWith<_$ParticipantsListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
