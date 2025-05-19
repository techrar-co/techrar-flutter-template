// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_window.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryWindowImpl _$$DeliveryWindowImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryWindowImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
      ordering: (json['ordering'] as num).toInt(),
      type: $enumDecode(_$DeliveryWindowTypeEnumMap, json['type']),
      fromTime: TimeOfDayExtension.fromString(json['from_time'] as String),
      toTime: TimeOfDayExtension.fromString(json['to_time'] as String),
      isDefault: json['is_default'] as bool,
      tag: json['tag'] as String?,
      isOnDemandOpened: json['is_on_demand_opened'] as bool? ?? false,
    );

Map<String, dynamic> _$$DeliveryWindowImplToJson(
        _$DeliveryWindowImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
      'ordering': instance.ordering,
      'type': _$DeliveryWindowTypeEnumMap[instance.type]!,
      'from_time': TimeOfDayExtension.toJson(instance.fromTime),
      'to_time': TimeOfDayExtension.toJson(instance.toTime),
      'is_default': instance.isDefault,
      'tag': instance.tag,
      'is_on_demand_opened': instance.isOnDemandOpened,
    };

const _$DeliveryWindowTypeEnumMap = {
  DeliveryWindowType.on_demand: 'on_demand',
  DeliveryWindowType.subscription: 'subscription',
  DeliveryWindowType.both: 'both',
};
