// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CityImpl _$$CityImplFromJson(Map<String, dynamic> json) => _$CityImpl(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      modifiedAt: DateTime.parse(json['modified_at'] as String),
      ordering: (json['ordering'] as num).toInt(),
      nameEn: json['name_en'] as String,
      nameAr: json['name_ar'] as String,
      countryCode: json['country_code'] as String?,
      keywords: json['keywords'] as String?,
      isSupported: json['is_supported'] as bool?,
    );

Map<String, dynamic> _$$CityImplToJson(_$CityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'modified_at': instance.modifiedAt.toIso8601String(),
      'ordering': instance.ordering,
      'name_en': instance.nameEn,
      'name_ar': instance.nameAr,
      'country_code': instance.countryCode,
      'keywords': instance.keywords,
      'is_supported': instance.isSupported,
    };
