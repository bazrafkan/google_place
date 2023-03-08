// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lat_lon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatLon _$LatLonFromJson(Map json) => LatLon(
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$LatLonToJson(LatLon instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
