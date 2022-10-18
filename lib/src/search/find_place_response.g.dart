// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_place_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindPlaceResponse _$FindPlaceResponseFromJson(Map json) => FindPlaceResponse(
      status: json['status'] as String?,
      htmlAttributions: (json['htmlAttributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nextPageToken: json['nextPageToken'] as String?,
      debugLog: json['debugLog'] == null
          ? null
          : DebugLog.fromJson(
              Map<String, dynamic>.from(json['debugLog'] as Map)),
      candidates: (json['candidates'] as List<dynamic>?)
          ?.map((e) =>
              SearchCandidate.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$FindPlaceResponseToJson(FindPlaceResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'htmlAttributions': instance.htmlAttributions,
      'nextPageToken': instance.nextPageToken,
      'debugLog': instance.debugLog?.toJson(),
      'candidates': instance.candidates?.map((e) => e.toJson()).toList(),
    };
