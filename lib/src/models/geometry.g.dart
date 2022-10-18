// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Geometry _$GeometryFromJson(Map json) => Geometry(
      location: json['location'] == null
          ? null
          : Location.fromJson(
              Map<String, dynamic>.from(json['location'] as Map)),
      viewport: json['viewport'] == null
          ? null
          : Viewport.fromJson(
              Map<String, dynamic>.from(json['viewport'] as Map)),
      bounds: json['bounds'] == null
          ? null
          : Bounds.fromJson(Map<String, dynamic>.from(json['bounds'] as Map)),
    );

Map<String, dynamic> _$GeometryToJson(Geometry instance) => <String, dynamic>{
      'location': instance.location?.toJson(),
      'viewport': instance.viewport?.toJson(),
      'bounds': instance.bounds?.toJson(),
    };
