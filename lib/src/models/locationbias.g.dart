// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locationbias.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Locationbias _$LocationbiasFromJson(Map json) => Locationbias(
      ipbias: json['ipbias'] as bool?,
      point: json['point'] == null
          ? null
          : LatLon.fromJson(Map<String, dynamic>.from(json['point'] as Map)),
      circular: json['circular'] == null
          ? null
          : Circular.fromJson(
              Map<String, dynamic>.from(json['circular'] as Map)),
      rectangular: json['rectangular'] == null
          ? null
          : Rectangular.fromJson(
              Map<String, dynamic>.from(json['rectangular'] as Map)),
    );

Map<String, dynamic> _$LocationbiasToJson(Locationbias instance) =>
    <String, dynamic>{
      'ipbias': instance.ipbias,
      'point': instance.point?.toJson(),
      'circular': instance.circular?.toJson(),
      'rectangular': instance.rectangular?.toJson(),
    };

Circular _$CircularFromJson(Map json) => Circular(
      json['radius'] as int,
      LatLon.fromJson(Map<String, dynamic>.from(json['lat_lng'] as Map)),
    );

Map<String, dynamic> _$CircularToJson(Circular instance) => <String, dynamic>{
      'radius': instance.radius,
      'lat_lng': instance.latLng.toJson(),
    };

Rectangular _$RectangularFromJson(Map json) => Rectangular(
      LatLon.fromJson(Map<String, dynamic>.from(json['south_west'] as Map)),
      LatLon.fromJson(Map<String, dynamic>.from(json['north_east'] as Map)),
    );

Map<String, dynamic> _$RectangularToJson(Rectangular instance) =>
    <String, dynamic>{
      'south_west': instance.southWest.toJson(),
      'north_east': instance.northEast.toJson(),
    };
