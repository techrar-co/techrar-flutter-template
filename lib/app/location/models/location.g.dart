// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      id: (json['id'] as num).toInt(),
      city: City.fromJson(json['city'] as Map<String, dynamic>),
      locationUrl: json['location_url'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
      ordering: (json['ordering'] as num).toInt(),
      nameAr: json['name_ar'] as String,
      nameEn: json['name_en'] as String,
      longitude: json['longitude'] as String,
      latitude: json['latitude'] as String,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      placeId: json['place_id'] as String?,
      postalCode: json['postal_code'] as String?,
      formattedAddress: json['formatted_address'] as String?,
      districtEn: json['district'] as String?,
      districtAr: json['district_ar'] as String?,
      cityNameEn: json['city_name_en'] as String?,
      cityNameAr: json['city_name_ar'] as String?,
      route: json['route'] as String?,
      streetNumber: json['street_number'] as String?,
      image: json['image'] as String?,
      type: json['type'] as String? ?? 'work',
      description: json['description'] as String? ?? '-',
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'location_url': instance.locationUrl,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
      'ordering': instance.ordering,
      'name_ar': instance.nameAr,
      'name_en': instance.nameEn,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'address1': instance.address1,
      'address2': instance.address2,
      'place_id': instance.placeId,
      'postal_code': instance.postalCode,
      'formatted_address': instance.formattedAddress,
      'district': instance.districtEn,
      'district_ar': instance.districtAr,
      'city_name_en': instance.cityNameEn,
      'city_name_ar': instance.cityNameAr,
      'route': instance.route,
      'street_number': instance.streetNumber,
      'image': instance.image,
      'type': instance.type,
      'description': instance.description,
    };
