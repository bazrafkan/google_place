// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompletePrediction _$AutocompletePredictionFromJson(Map json) =>
    AutocompletePrediction(
      description: json['description'] as String?,
      distanceMeters: json['distanceMeters'] as int?,
      id: json['id'] as String?,
      matchedSubstrings: (json['matchedSubstrings'] as List<dynamic>?)
          ?.map((e) =>
              MatchedSubstring.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      placeId: json['placeId'] as String?,
      reference: json['reference'] as String?,
      structuredFormatting: json['structuredFormatting'] == null
          ? null
          : StructuredFormatting.fromJson(
              Map<String, dynamic>.from(json['structuredFormatting'] as Map)),
      terms: (json['terms'] as List<dynamic>?)
          ?.map((e) => Term.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AutocompletePredictionToJson(
        AutocompletePrediction instance) =>
    <String, dynamic>{
      'description': instance.description,
      'distanceMeters': instance.distanceMeters,
      'id': instance.id,
      'matchedSubstrings':
          instance.matchedSubstrings?.map((e) => e.toJson()).toList(),
      'placeId': instance.placeId,
      'reference': instance.reference,
      'structuredFormatting': instance.structuredFormatting?.toJson(),
      'terms': instance.terms?.map((e) => e.toJson()).toList(),
      'types': instance.types,
    };
