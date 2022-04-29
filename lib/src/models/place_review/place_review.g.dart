// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceReview _$PlaceReviewFromJson(Map<String, dynamic> json) => PlaceReview(
      authorName: json['author_name'] as String,
      rating: json['rating'] as int,
      relativeTimeDescription: json['relative_time_description'] as String,
      time: json['time'] as int,
      authorUrl: json['author_url'] as String?,
      language: json['language'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$PlaceReviewToJson(PlaceReview instance) =>
    <String, dynamic>{
      'author_name': instance.authorName,
      'rating': instance.rating,
      'relative_time_description': instance.relativeTimeDescription,
      'time': instance.time,
      'author_url': instance.authorUrl,
      'language': instance.language,
      'profile_photo_url': instance.profilePhotoUrl,
      'text': instance.text,
    };
