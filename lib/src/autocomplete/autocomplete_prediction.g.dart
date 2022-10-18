// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompletePrediction _$AutocompletePredictionFromJson(Map json) =>
    AutocompletePrediction(
      description: json['description'] as String?,
      distanceMeters: json['distance_meters'] as int?,
      id: json['id'] as String?,
      matchedSubstrings: (json['matched_substrings'] as List<dynamic>?)
          ?.map((e) =>
              MatchedSubstring.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      placeId: json['place_id'] as String?,
      reference: json['reference'] as String?,
      structuredFormatting: json['structured_formatting'] == null
          ? null
          : StructuredFormatting.fromJson(
              Map<String, dynamic>.from(json['structured_formatting'] as Map)),
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
      'distance_meters': instance.distanceMeters,
      'id': instance.id,
      'matched_substrings':
          instance.matchedSubstrings?.map((e) => e.toJson()).toList(),
      'place_id': instance.placeId,
      'reference': instance.reference,
      'structured_formatting': instance.structuredFormatting?.toJson(),
      'terms': instance.terms?.map((e) => e.toJson()).toList(),
      'types': instance.types,
    };
