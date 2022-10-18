// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextSearchResponse _$TextSearchResponseFromJson(Map json) => TextSearchResponse(
      status: json['status'] as String?,
      htmlAttributions: (json['html_attributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nextPageToken: json['next_page_token'] as String?,
      debugLog: json['debug_log'] == null
          ? null
          : DebugLog.fromJson(
              Map<String, dynamic>.from(json['debug_log'] as Map)),
      results: (json['results'] as List<dynamic>?)
          ?.map(
              (e) => SearchResult.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$TextSearchResponseToJson(TextSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'html_attributions': instance.htmlAttributions,
      'next_page_token': instance.nextPageToken,
      'debug_log': instance.debugLog?.toJson(),
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };
