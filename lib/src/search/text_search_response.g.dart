// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextSearchResponse _$TextSearchResponseFromJson(Map json) => TextSearchResponse(
      status: json['status'] as String?,
      htmlAttributions: (json['htmlAttributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nextPageToken: json['nextPageToken'] as String?,
      debugLog: json['debugLog'] == null
          ? null
          : DebugLog.fromJson(
              Map<String, dynamic>.from(json['debugLog'] as Map)),
      results: (json['results'] as List<dynamic>?)
          ?.map(
              (e) => SearchResult.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$TextSearchResponseToJson(TextSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'htmlAttributions': instance.htmlAttributions,
      'nextPageToken': instance.nextPageToken,
      'debugLog': instance.debugLog?.toJson(),
      'results': instance.results?.map((e) => e.toJson()).toList(),
    };
