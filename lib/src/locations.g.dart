// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLng _$LatLngFromJson(Map<String, dynamic> json) => LatLng(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$LatLngToJson(LatLng instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };

Region _$RegionFromJson(Map<String, dynamic> json) => Region(
      coords: LatLng.fromJson(json['coords'] as Map<String, dynamic>),
      id: json['id'] as String,
      name: json['name'] as String,
      zoom: (json['zoom'] as num).toDouble(),
    );

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'coords': instance.coords,
      'id': instance.id,
      'name': instance.name,
      'zoom': instance.zoom,
    };

Office _$OfficeFromJson(Map<String, dynamic> json) => Office(
      id: json['id'] as String,
      district: json['district'] as String,
      mDistrict: json['mDistrict'] as String,
      name: json['name'] as String,
      mLocation: json['mLocation'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      image: json['image'] as String,
      mShortDescription: json['mShortDescription'] as String,
      mLongDescription: json['mLongDescription'] as String,
    );

Map<String, dynamic> _$OfficeToJson(Office instance) => <String, dynamic>{
      'id': instance.id,
      'district': instance.district,
      'mDistrict': instance.mDistrict,
      'name': instance.name,
      'mLocation': instance.mLocation,
      'lat': instance.lat,
      'lng': instance.lng,
      'mShortDescription': instance.mShortDescription,
      'mLongDescription': instance.mLongDescription,
      'image': instance.image,
    };

Locations _$LocationsFromJson(Map<String, dynamic> json) => Locations(
      sthaan: (json['sthaan'] as List<dynamic>)
          .map((e) => Office.fromJson(e as Map<String, dynamic>))
          .toList(),
      districts: (json['districts'] as List<dynamic>)
          .map((e) => Region.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LocationsToJson(Locations instance) => <String, dynamic>{
      'sthaan': instance.sthaan,
      'districts': instance.districts,
    };
