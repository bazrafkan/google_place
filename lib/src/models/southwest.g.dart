// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'southwest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Southwest _$SouthwestFromJson(Map json) => Southwest(
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SouthwestToJson(Southwest instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
