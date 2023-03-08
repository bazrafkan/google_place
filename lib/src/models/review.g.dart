// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Review _$ReviewFromJson(Map json) => Review(
      authorName: json['author_name'] as String?,
      authorUrl: json['author_url'] as String?,
      language: json['language'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
      rating: json['rating'] as int?,
      relativeTimeDescription: json['relative_time_description'] as String?,
      text: json['text'] as String?,
      time: json['time'] as int?,
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'author_name': instance.authorName,
      'author_url': instance.authorUrl,
      'language': instance.language,
      'profile_photo_url': instance.profilePhotoUrl,
      'rating': instance.rating,
      'relative_time_description': instance.relativeTimeDescription,
      'text': instance.text,
      'time': instance.time,
    };
