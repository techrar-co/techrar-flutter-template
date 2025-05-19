// ignore_for_file: constant_identifier_names

import 'dart:convert';
import 'dart:ui';

import 'package:techrar_captain/app/auth/models/customer_profile.dart';
import 'package:techrar_captain/core/constants/colors.dart';

import '../../location/models/location.dart';
import 'delivery_window.dart';

enum SubOrderStatus {
  new_suborder._(kGrey),
  confirmed._(kPrimaryColor),
  on_delivery._(kYellow1),
  delivered._(kGreen),
  cancelled_by_customer._(kRed2),
  cancelled_by_operation._(kRed2),
  not_received_by_customer._(kOrange3);

  final Color color;

  const SubOrderStatus._(this.color);

  static SubOrderStatus fromString(String value) {
    switch (value) {
      case 'new':
        return SubOrderStatus.new_suborder;
      case 'confirmed':
        return SubOrderStatus.confirmed;
      case 'on_delivery':
        return SubOrderStatus.on_delivery;
      case 'delivered':
        return SubOrderStatus.delivered;
      case 'cancelled_by_customer':
        return SubOrderStatus.cancelled_by_customer;
      case 'cancelled_by_operation':
        return SubOrderStatus.cancelled_by_operation;
      case 'not_received_by_customer':
        return SubOrderStatus.not_received_by_customer;
      default:
        return SubOrderStatus.new_suborder;
    }
  }
}

class SubOrder implements Comparable {
  SubOrder({
    required this.id,
    required this.subscriptionId,
    required this.location,
    required this.deliveryWindow,
    required this.ordering,
    required this.status,
    required CustomerProfile customerProfile,
    required this.isPickup,
  }) {
    _customerProfile = customerProfile;
  }

  final int id;
  late final CustomerProfile _customerProfile;
  Location location;
  final DeliveryWindow deliveryWindow;
  final int ordering;
  final SubOrderStatus status;
  final int subscriptionId;
  final bool isPickup;

  int get customerId => _customerProfile.id;
  String get customerName => _customerProfile.name;
  String get customerUsername => _customerProfile.mobile;
  String get mobileNumber => _customerProfile.mobile;
  String get customerLang => _customerProfile.lang ?? 'ar';

  // whats the point ?
  CustomerProfile get customerProfile => _customerProfile;

  factory SubOrder.fromMap(Map<String, dynamic> json) {
    return SubOrder(
      id: json["id"],
      customerProfile: CustomerProfile.fromJson(json["customer_profile"]),
      location: Location.fromJson(json["location"]),
      deliveryWindow: DeliveryWindow.fromJson(json["delivery_window"]),
      ordering: json["ordering"],
      status: SubOrderStatus.fromString(json["status"]),
      subscriptionId: json["subscription"],
      isPickup: json["is_pickup"] ?? false,
    );
  }

  @override
  int compareTo(other) {
    return ordering.compareTo(other.ordering) == 0 ? id.compareTo(other.id) : ordering.compareTo(other.ordering);
  }
}
