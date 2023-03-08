// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_place_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindPlaceResponse _$FindPlaceResponseFromJson(Map json) => FindPlaceResponse(
      status: json['status'] as String?,
      htmlAttributions: (json['html_attributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nextPageToken: json['next_page_token'] as String?,
      debugLog: json['debug_log'] == null
          ? null
          : DebugLog.fromJson(
              Map<String, dynamic>.from(json['debug_log'] as Map)),
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) =>
              SearchCandidate.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$FindPlaceResponseToJson(FindPlaceResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'html_attributions': instance.htmlAttributions,
      'next_page_token': instance.nextPageToken,
      'debug_log': instance.debugLog?.toJson(),
      'candidates': instance.candidates?.map((e) => e.toJson()).toList(),
    };
