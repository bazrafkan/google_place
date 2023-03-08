// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bounds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bounds _$BoundsFromJson(Map json) => Bounds(
      northeast: json['northeast'] == null
          ? null
          : Northeast.fromJson(
              Map<String, dynamic>.from(json['northeast'] as Map)),
      southwest: json['southwest'] == null
          ? null
          : Southwest.fromJson(
              Map<String, dynamic>.from(json['southwest'] as Map)),
    );

Map<String, dynamic> _$BoundsToJson(Bounds instance) => <String, dynamic>{
      'northeast': instance.northeast?.toJson(),
      'southwest': instance.southwest?.toJson(),
    };
