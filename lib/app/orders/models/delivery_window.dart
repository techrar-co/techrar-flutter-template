import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:techrar_captain/core/localization/localization.dart';

import '../../../core/util/extension.dart';

part 'delivery_window.freezed.dart';
part 'delivery_window.g.dart';

@freezed
class DeliveryWindow with _$DeliveryWindow {
  const DeliveryWindow._();

  const factory DeliveryWindow({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "created_at") required DateTime createdAt,
    @JsonKey(name: "modified_at") required DateTime modifiedAt,
    @JsonKey(name: "ordering") required int ordering,
    @JsonKey(name: "type") required DeliveryWindowType type,
    @JsonKey(name: "from_time", fromJson: TimeOfDayExtension.fromString, toJson: TimeOfDayExtension.toJson)
    required TimeOfDay fromTime,
    @JsonKey(name: "to_time", fromJson: TimeOfDayExtension.fromString, toJson: TimeOfDayExtension.toJson)
    required TimeOfDay toTime,
    @JsonKey(name: "is_default") required bool isDefault,
    @JsonKey(name: "tag") required String? tag,
    @JsonKey(name: "is_on_demand_opened") @Default(false) bool isOnDemandOpened,
  }) = _DeliveryWindow;

  factory DeliveryWindow.fromJson(Map<String, Object?> json) => _$DeliveryWindowFromJson(json);

  String get durationTag {
    final int start = fromTime.hour;
    if (start < 12) return "morning".translate;
    if (start < 18) return "evening".translate;
    return "night".translate;
  }

  Color get durationColor {
    final int start = fromTime.hour;
    if (start < 12) return const Color(0xFFED9200);
    if (start < 18) return Colors.green;
    return const Color(0xFFEE79BB);
  }

  @override
  String toString() => '${fromTime.dayTime12} - ${toTime.dayTime12}';
}

enum DeliveryWindowType {
  @JsonValue("on_demand")
  on_demand,
  @JsonValue("subscription")
  subscription,
  @JsonValue("both")
  both,
}
