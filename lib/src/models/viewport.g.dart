// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Viewport _$ViewportFromJson(Map json) => Viewport(
      northeast: json['northeast'] == null
          ? null
          : Northeast.fromJson(
              Map<String, dynamic>.from(json['northeast'] as Map)),
      southwest: json['southwest'] == null
          ? null
          : Southwest.fromJson(
              Map<String, dynamic>.from(json['southwest'] as Map)),
    );

Map<String, dynamic> _$ViewportToJson(Viewport instance) => <String, dynamic>{
      'northeast': instance.northeast?.toJson(),
      'southwest': instance.southwest?.toJson(),
    };
