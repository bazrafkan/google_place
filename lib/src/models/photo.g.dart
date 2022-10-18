// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map json) => Photo(
      photoReference: json['photoReference'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
      htmlAttributions: (json['htmlAttributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'photoReference': instance.photoReference,
      'height': instance.height,
      'width': instance.width,
      'htmlAttributions': instance.htmlAttributions,
    };
