// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_text_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesTextSearchResponse _$PlacesTextSearchResponseFromJson(
        Map<String, dynamic> json) =>
    PlacesTextSearchResponse(
      htmlAttributions: (json['html_attributions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      errorMessage: json['error_message'] as String?,
      infoMessages: (json['info_messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nextPageToken: json['next_page_token'] as String?,
    );

Map<String, dynamic> _$PlacesTextSearchResponseToJson(
        PlacesTextSearchResponse instance) =>
    <String, dynamic>{
      'html_attributions': instance.htmlAttributions,
      'results': instance.results,
      'status': instance.status,
      'error_message': instance.errorMessage,
      'info_messages': instance.infoMessages,
      'next_page_token': instance.nextPageToken,
    };
