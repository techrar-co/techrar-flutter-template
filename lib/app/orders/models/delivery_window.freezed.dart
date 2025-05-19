// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_window.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryWindow _$DeliveryWindowFromJson(Map<String, dynamic> json) {
  return _DeliveryWindow.fromJson(json);
}

/// @nodoc
mixin _$DeliveryWindow {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "ordering")
  int get ordering => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  DeliveryWindowType get type => throw _privateConstructorUsedError;
  @JsonKey(
      name: "from_time",
      fromJson: TimeOfDayExtension.fromString,
      toJson: TimeOfDayExtension.toJson)
  TimeOfDay get fromTime => throw _privateConstructorUsedError;
  @JsonKey(
      name: "to_time",
      fromJson: TimeOfDayExtension.fromString,
      toJson: TimeOfDayExtension.toJson)
  TimeOfDay get toTime => throw _privateConstructorUsedError;
  @JsonKey(name: "is_default")
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "tag")
  String? get tag => throw _privateConstructorUsedError;
  @JsonKey(name: "is_on_demand_opened")
  bool get isOnDemandOpened => throw _privateConstructorUsedError;

  /// Serializes this DeliveryWindow to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryWindow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryWindowCopyWith<DeliveryWindow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryWindowCopyWith<$Res> {
  factory $DeliveryWindowCopyWith(
          DeliveryWindow value, $Res Function(DeliveryWindow) then) =
      _$DeliveryWindowCopyWithImpl<$Res, DeliveryWindow>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt,
      @JsonKey(name: "ordering") int ordering,
      @JsonKey(name: "type") DeliveryWindowType type,
      @JsonKey(
          name: "from_time",
          fromJson: TimeOfDayExtension.fromString,
          toJson: TimeOfDayExtension.toJson)
      TimeOfDay fromTime,
      @JsonKey(
          name: "to_time",
          fromJson: TimeOfDayExtension.fromString,
          toJson: TimeOfDayExtension.toJson)
      TimeOfDay toTime,
      @JsonKey(name: "is_default") bool isDefault,
      @JsonKey(name: "tag") String? tag,
      @JsonKey(name: "is_on_demand_opened") bool isOnDemandOpened});
}

/// @nodoc
class _$DeliveryWindowCopyWithImpl<$Res, $Val extends DeliveryWindow>
    implements $DeliveryWindowCopyWith<$Res> {
  _$DeliveryWindowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryWindow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? ordering = null,
    Object? type = null,
    Object? fromTime = null,
    Object? toTime = null,
    Object? isDefault = null,
    Object? tag = freezed,
    Object? isOnDemandOpened = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ordering: null == ordering
          ? _value.ordering
          : ordering // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeliveryWindowType,
      fromTime: null == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      toTime: null == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnDemandOpened: null == isOnDemandOpened
          ? _value.isOnDemandOpened
          : isOnDemandOpened // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeliveryWindowImplCopyWith<$Res>
    implements $DeliveryWindowCopyWith<$Res> {
  factory _$$DeliveryWindowImplCopyWith(_$DeliveryWindowImpl value,
          $Res Function(_$DeliveryWindowImpl) then) =
      __$$DeliveryWindowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt,
      @JsonKey(name: "ordering") int ordering,
      @JsonKey(name: "type") DeliveryWindowType type,
      @JsonKey(
          name: "from_time",
          fromJson: TimeOfDayExtension.fromString,
          toJson: TimeOfDayExtension.toJson)
      TimeOfDay fromTime,
      @JsonKey(
          name: "to_time",
          fromJson: TimeOfDayExtension.fromString,
          toJson: TimeOfDayExtension.toJson)
      TimeOfDay toTime,
      @JsonKey(name: "is_default") bool isDefault,
      @JsonKey(name: "tag") String? tag,
      @JsonKey(name: "is_on_demand_opened") bool isOnDemandOpened});
}

/// @nodoc
class __$$DeliveryWindowImplCopyWithImpl<$Res>
    extends _$DeliveryWindowCopyWithImpl<$Res, _$DeliveryWindowImpl>
    implements _$$DeliveryWindowImplCopyWith<$Res> {
  __$$DeliveryWindowImplCopyWithImpl(
      _$DeliveryWindowImpl _value, $Res Function(_$DeliveryWindowImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryWindow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? ordering = null,
    Object? type = null,
    Object? fromTime = null,
    Object? toTime = null,
    Object? isDefault = null,
    Object? tag = freezed,
    Object? isOnDemandOpened = null,
  }) {
    return _then(_$DeliveryWindowImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ordering: null == ordering
          ? _value.ordering
          : ordering // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DeliveryWindowType,
      fromTime: null == fromTime
          ? _value.fromTime
          : fromTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      toTime: null == toTime
          ? _value.toTime
          : toTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnDemandOpened: null == isOnDemandOpened
          ? _value.isOnDemandOpened
          : isOnDemandOpened // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryWindowImpl extends _DeliveryWindow {
  const _$DeliveryWindowImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "modified_at") required this.modifiedAt,
      @JsonKey(name: "ordering") required this.ordering,
      @JsonKey(name: "type") required this.type,
      @JsonKey(
          name: "from_time",
          fromJson: TimeOfDayExtension.fromString,
          toJson: TimeOfDayExtension.toJson)
      required this.fromTime,
      @JsonKey(
          name: "to_time",
          fromJson: TimeOfDayExtension.fromString,
          toJson: TimeOfDayExtension.toJson)
      required this.toTime,
      @JsonKey(name: "is_default") required this.isDefault,
      @JsonKey(name: "tag") required this.tag,
      @JsonKey(name: "is_on_demand_opened") this.isOnDemandOpened = false})
      : super._();

  factory _$DeliveryWindowImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryWindowImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "modified_at")
  final DateTime modifiedAt;
  @override
  @JsonKey(name: "ordering")
  final int ordering;
  @override
  @JsonKey(name: "type")
  final DeliveryWindowType type;
  @override
  @JsonKey(
      name: "from_time",
      fromJson: TimeOfDayExtension.fromString,
      toJson: TimeOfDayExtension.toJson)
  final TimeOfDay fromTime;
  @override
  @JsonKey(
      name: "to_time",
      fromJson: TimeOfDayExtension.fromString,
      toJson: TimeOfDayExtension.toJson)
  final TimeOfDay toTime;
  @override
  @JsonKey(name: "is_default")
  final bool isDefault;
  @override
  @JsonKey(name: "tag")
  final String? tag;
  @override
  @JsonKey(name: "is_on_demand_opened")
  final bool isOnDemandOpened;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryWindowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            (identical(other.ordering, ordering) ||
                other.ordering == ordering) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fromTime, fromTime) ||
                other.fromTime == fromTime) &&
            (identical(other.toTime, toTime) || other.toTime == toTime) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.isOnDemandOpened, isOnDemandOpened) ||
                other.isOnDemandOpened == isOnDemandOpened));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, modifiedAt,
      ordering, type, fromTime, toTime, isDefault, tag, isOnDemandOpened);

  /// Create a copy of DeliveryWindow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryWindowImplCopyWith<_$DeliveryWindowImpl> get copyWith =>
      __$$DeliveryWindowImplCopyWithImpl<_$DeliveryWindowImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryWindowImplToJson(
      this,
    );
  }
}

abstract class _DeliveryWindow extends DeliveryWindow {
  const factory _DeliveryWindow(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "modified_at") required final DateTime modifiedAt,
          @JsonKey(name: "ordering") required final int ordering,
          @JsonKey(name: "type") required final DeliveryWindowType type,
          @JsonKey(
              name: "from_time",
              fromJson: TimeOfDayExtension.fromString,
              toJson: TimeOfDayExtension.toJson)
          required final TimeOfDay fromTime,
          @JsonKey(
              name: "to_time",
              fromJson: TimeOfDayExtension.fromString,
              toJson: TimeOfDayExtension.toJson)
          required final TimeOfDay toTime,
          @JsonKey(name: "is_default") required final bool isDefault,
          @JsonKey(name: "tag") required final String? tag,
          @JsonKey(name: "is_on_demand_opened") final bool isOnDemandOpened}) =
      _$DeliveryWindowImpl;
  const _DeliveryWindow._() : super._();

  factory _DeliveryWindow.fromJson(Map<String, dynamic> json) =
      _$DeliveryWindowImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt;
  @override
  @JsonKey(name: "ordering")
  int get ordering;
  @override
  @JsonKey(name: "type")
  DeliveryWindowType get type;
  @override
  @JsonKey(
      name: "from_time",
      fromJson: TimeOfDayExtension.fromString,
      toJson: TimeOfDayExtension.toJson)
  TimeOfDay get fromTime;
  @override
  @JsonKey(
      name: "to_time",
      fromJson: TimeOfDayExtension.fromString,
      toJson: TimeOfDayExtension.toJson)
  TimeOfDay get toTime;
  @override
  @JsonKey(name: "is_default")
  bool get isDefault;
  @override
  @JsonKey(name: "tag")
  String? get tag;
  @override
  @JsonKey(name: "is_on_demand_opened")
  bool get isOnDemandOpened;

  /// Create a copy of DeliveryWindow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryWindowImplCopyWith<_$DeliveryWindowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
