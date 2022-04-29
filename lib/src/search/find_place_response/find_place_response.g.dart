// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_place_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindPlaceResponse _$FindPlaceResponseFromJson(Map<String, dynamic> json) =>
    FindPlaceResponse(
      status: json['status'] as String?,
      htmlAttributions: (json['html_attributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nextPageToken: json['next_page_token'] as String?,
      debugLog: json['debug_log'] == null
          ? null
          : DebugLog.fromJson(json['debug_log'] as Map<String, dynamic>),
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) => SearchResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FindPlaceResponseToJson(FindPlaceResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'html_attributions': instance.htmlAttributions,
      'next_page_token': instance.nextPageToken,
      'debug_log': instance.debugLog,
      'candidates': instance.candidates,
    };
