// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteResponse _$AutocompleteResponseFromJson(
        Map<String, dynamic> json) =>
    AutocompleteResponse(
      status: json['status'] as String?,
      predictions: (json['predictions'] as List<dynamic>?)
          ?.map(
              (e) => AutocompletePrediction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AutocompleteResponseToJson(
        AutocompleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'predictions': instance.predictions,
    };
