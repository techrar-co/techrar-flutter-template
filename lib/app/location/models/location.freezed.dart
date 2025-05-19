// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  City get city => throw _privateConstructorUsedError;
  @JsonKey(name: "location_url")
  String get locationUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "modified_at")
  DateTime get modifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "ordering")
  int get ordering => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ar")
  String get nameAr => throw _privateConstructorUsedError;
  @JsonKey(name: "name_en")
  String get nameEn => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  String get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "address1")
  String? get address1 => throw _privateConstructorUsedError;
  @JsonKey(name: "address2")
  String? get address2 => throw _privateConstructorUsedError;
  @JsonKey(name: "place_id")
  String? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: "postal_code")
  String? get postalCode => throw _privateConstructorUsedError;
  @JsonKey(name: "formatted_address")
  String? get formattedAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "district")
  String? get districtEn => throw _privateConstructorUsedError;
  @JsonKey(name: "district_ar")
  String? get districtAr => throw _privateConstructorUsedError;
  @JsonKey(name: "city_name_en")
  String? get cityNameEn => throw _privateConstructorUsedError;
  @JsonKey(name: "city_name_ar")
  String? get cityNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: "route")
  String? get route => throw _privateConstructorUsedError;
  @JsonKey(name: "street_number")
  String? get streetNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "city") City city,
      @JsonKey(name: "location_url") String locationUrl,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt,
      @JsonKey(name: "ordering") int ordering,
      @JsonKey(name: "name_ar") String nameAr,
      @JsonKey(name: "name_en") String nameEn,
      @JsonKey(name: "longitude") String longitude,
      @JsonKey(name: "latitude") String latitude,
      @JsonKey(name: "address1") String? address1,
      @JsonKey(name: "address2") String? address2,
      @JsonKey(name: "place_id") String? placeId,
      @JsonKey(name: "postal_code") String? postalCode,
      @JsonKey(name: "formatted_address") String? formattedAddress,
      @JsonKey(name: "district") String? districtEn,
      @JsonKey(name: "district_ar") String? districtAr,
      @JsonKey(name: "city_name_en") String? cityNameEn,
      @JsonKey(name: "city_name_ar") String? cityNameAr,
      @JsonKey(name: "route") String? route,
      @JsonKey(name: "street_number") String? streetNumber,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "description") String description});

  $CityCopyWith<$Res> get city;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? locationUrl = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? ordering = null,
    Object? nameAr = null,
    Object? nameEn = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? placeId = freezed,
    Object? postalCode = freezed,
    Object? formattedAddress = freezed,
    Object? districtEn = freezed,
    Object? districtAr = freezed,
    Object? cityNameEn = freezed,
    Object? cityNameAr = freezed,
    Object? route = freezed,
    Object? streetNumber = freezed,
    Object? image = freezed,
    Object? type = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      locationUrl: null == locationUrl
          ? _value.locationUrl
          : locationUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      districtEn: freezed == districtEn
          ? _value.districtEn
          : districtEn // ignore: cast_nullable_to_non_nullable
              as String?,
      districtAr: freezed == districtAr
          ? _value.districtAr
          : districtAr // ignore: cast_nullable_to_non_nullable
              as String?,
      cityNameEn: freezed == cityNameEn
          ? _value.cityNameEn
          : cityNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      cityNameAr: freezed == cityNameAr
          ? _value.cityNameAr
          : cityNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "city") City city,
      @JsonKey(name: "location_url") String locationUrl,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "modified_at") DateTime modifiedAt,
      @JsonKey(name: "ordering") int ordering,
      @JsonKey(name: "name_ar") String nameAr,
      @JsonKey(name: "name_en") String nameEn,
      @JsonKey(name: "longitude") String longitude,
      @JsonKey(name: "latitude") String latitude,
      @JsonKey(name: "address1") String? address1,
      @JsonKey(name: "address2") String? address2,
      @JsonKey(name: "place_id") String? placeId,
      @JsonKey(name: "postal_code") String? postalCode,
      @JsonKey(name: "formatted_address") String? formattedAddress,
      @JsonKey(name: "district") String? districtEn,
      @JsonKey(name: "district_ar") String? districtAr,
      @JsonKey(name: "city_name_en") String? cityNameEn,
      @JsonKey(name: "city_name_ar") String? cityNameAr,
      @JsonKey(name: "route") String? route,
      @JsonKey(name: "street_number") String? streetNumber,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "description") String description});

  @override
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? city = null,
    Object? locationUrl = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? ordering = null,
    Object? nameAr = null,
    Object? nameEn = null,
    Object? longitude = null,
    Object? latitude = null,
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? placeId = freezed,
    Object? postalCode = freezed,
    Object? formattedAddress = freezed,
    Object? districtEn = freezed,
    Object? districtAr = freezed,
    Object? cityNameEn = freezed,
    Object? cityNameAr = freezed,
    Object? route = freezed,
    Object? streetNumber = freezed,
    Object? image = freezed,
    Object? type = null,
    Object? description = null,
  }) {
    return _then(_$LocationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
      locationUrl: null == locationUrl
          ? _value.locationUrl
          : locationUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      formattedAddress: freezed == formattedAddress
          ? _value.formattedAddress
          : formattedAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      districtEn: freezed == districtEn
          ? _value.districtEn
          : districtEn // ignore: cast_nullable_to_non_nullable
              as String?,
      districtAr: freezed == districtAr
          ? _value.districtAr
          : districtAr // ignore: cast_nullable_to_non_nullable
              as String?,
      cityNameEn: freezed == cityNameEn
          ? _value.cityNameEn
          : cityNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      cityNameAr: freezed == cityNameAr
          ? _value.cityNameAr
          : cityNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      streetNumber: freezed == streetNumber
          ? _value.streetNumber
          : streetNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl extends _Location {
  const _$LocationImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "city") required this.city,
      @JsonKey(name: "location_url") required this.locationUrl,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "modified_at") required this.modifiedAt,
      @JsonKey(name: "ordering") required this.ordering,
      @JsonKey(name: "name_ar") required this.nameAr,
      @JsonKey(name: "name_en") required this.nameEn,
      @JsonKey(name: "longitude") required this.longitude,
      @JsonKey(name: "latitude") required this.latitude,
      @JsonKey(name: "address1") required this.address1,
      @JsonKey(name: "address2") required this.address2,
      @JsonKey(name: "place_id") required this.placeId,
      @JsonKey(name: "postal_code") required this.postalCode,
      @JsonKey(name: "formatted_address") required this.formattedAddress,
      @JsonKey(name: "district") required this.districtEn,
      @JsonKey(name: "district_ar") required this.districtAr,
      @JsonKey(name: "city_name_en") required this.cityNameEn,
      @JsonKey(name: "city_name_ar") required this.cityNameAr,
      @JsonKey(name: "route") required this.route,
      @JsonKey(name: "street_number") required this.streetNumber,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "type") this.type = 'work',
      @JsonKey(name: "description") this.description = '-'})
      : super._();

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "city")
  final City city;
  @override
  @JsonKey(name: "location_url")
  final String locationUrl;
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
  @JsonKey(name: "name_ar")
  final String nameAr;
  @override
  @JsonKey(name: "name_en")
  final String nameEn;
  @override
  @JsonKey(name: "longitude")
  final String longitude;
  @override
  @JsonKey(name: "latitude")
  final String latitude;
  @override
  @JsonKey(name: "address1")
  final String? address1;
  @override
  @JsonKey(name: "address2")
  final String? address2;
  @override
  @JsonKey(name: "place_id")
  final String? placeId;
  @override
  @JsonKey(name: "postal_code")
  final String? postalCode;
  @override
  @JsonKey(name: "formatted_address")
  final String? formattedAddress;
  @override
  @JsonKey(name: "district")
  final String? districtEn;
  @override
  @JsonKey(name: "district_ar")
  final String? districtAr;
  @override
  @JsonKey(name: "city_name_en")
  final String? cityNameEn;
  @override
  @JsonKey(name: "city_name_ar")
  final String? cityNameAr;
  @override
  @JsonKey(name: "route")
  final String? route;
  @override
  @JsonKey(name: "street_number")
  final String? streetNumber;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "description")
  final String description;

  @override
  String toString() {
    return 'Location(id: $id, city: $city, locationUrl: $locationUrl, createdAt: $createdAt, modifiedAt: $modifiedAt, ordering: $ordering, nameAr: $nameAr, nameEn: $nameEn, longitude: $longitude, latitude: $latitude, address1: $address1, address2: $address2, placeId: $placeId, postalCode: $postalCode, formattedAddress: $formattedAddress, districtEn: $districtEn, districtAr: $districtAr, cityNameEn: $cityNameEn, cityNameAr: $cityNameAr, route: $route, streetNumber: $streetNumber, image: $image, type: $type, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.locationUrl, locationUrl) ||
                other.locationUrl == locationUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            (identical(other.ordering, ordering) ||
                other.ordering == ordering) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.formattedAddress, formattedAddress) ||
                other.formattedAddress == formattedAddress) &&
            (identical(other.districtEn, districtEn) ||
                other.districtEn == districtEn) &&
            (identical(other.districtAr, districtAr) ||
                other.districtAr == districtAr) &&
            (identical(other.cityNameEn, cityNameEn) ||
                other.cityNameEn == cityNameEn) &&
            (identical(other.cityNameAr, cityNameAr) ||
                other.cityNameAr == cityNameAr) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.streetNumber, streetNumber) ||
                other.streetNumber == streetNumber) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        city,
        locationUrl,
        createdAt,
        modifiedAt,
        ordering,
        nameAr,
        nameEn,
        longitude,
        latitude,
        address1,
        address2,
        placeId,
        postalCode,
        formattedAddress,
        districtEn,
        districtAr,
        cityNameEn,
        cityNameAr,
        route,
        streetNumber,
        image,
        type,
        description
      ]);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location extends Location {
  const factory _Location(
      {@JsonKey(name: "id") required final int id,
      @JsonKey(name: "city") required final City city,
      @JsonKey(name: "location_url") required final String locationUrl,
      @JsonKey(name: "created_at") required final DateTime createdAt,
      @JsonKey(name: "modified_at") required final DateTime modifiedAt,
      @JsonKey(name: "ordering") required final int ordering,
      @JsonKey(name: "name_ar") required final String nameAr,
      @JsonKey(name: "name_en") required final String nameEn,
      @JsonKey(name: "longitude") required final String longitude,
      @JsonKey(name: "latitude") required final String latitude,
      @JsonKey(name: "address1") required final String? address1,
      @JsonKey(name: "address2") required final String? address2,
      @JsonKey(name: "place_id") required final String? placeId,
      @JsonKey(name: "postal_code") required final String? postalCode,
      @JsonKey(name: "formatted_address")
      required final String? formattedAddress,
      @JsonKey(name: "district") required final String? districtEn,
      @JsonKey(name: "district_ar") required final String? districtAr,
      @JsonKey(name: "city_name_en") required final String? cityNameEn,
      @JsonKey(name: "city_name_ar") required final String? cityNameAr,
      @JsonKey(name: "route") required final String? route,
      @JsonKey(name: "street_number") required final String? streetNumber,
      @JsonKey(name: "image") required final String? image,
      @JsonKey(name: "type") final String type,
      @JsonKey(name: "description") final String description}) = _$LocationImpl;
  const _Location._() : super._();

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "city")
  City get city;
  @override
  @JsonKey(name: "location_url")
  String get locationUrl;
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
  @JsonKey(name: "name_ar")
  String get nameAr;
  @override
  @JsonKey(name: "name_en")
  String get nameEn;
  @override
  @JsonKey(name: "longitude")
  String get longitude;
  @override
  @JsonKey(name: "latitude")
  String get latitude;
  @override
  @JsonKey(name: "address1")
  String? get address1;
  @override
  @JsonKey(name: "address2")
  String? get address2;
  @override
  @JsonKey(name: "place_id")
  String? get placeId;
  @override
  @JsonKey(name: "postal_code")
  String? get postalCode;
  @override
  @JsonKey(name: "formatted_address")
  String? get formattedAddress;
  @override
  @JsonKey(name: "district")
  String? get districtEn;
  @override
  @JsonKey(name: "district_ar")
  String? get districtAr;
  @override
  @JsonKey(name: "city_name_en")
  String? get cityNameEn;
  @override
  @JsonKey(name: "city_name_ar")
  String? get cityNameAr;
  @override
  @JsonKey(name: "route")
  String? get route;
  @override
  @JsonKey(name: "street_number")
  String? get streetNumber;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "description")
  String get description;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
