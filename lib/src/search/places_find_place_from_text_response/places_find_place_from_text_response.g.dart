// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_find_place_from_text_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesFindPlaceFromTextResponse _$PlacesFindPlaceFromTextResponseFromJson(
        Map<String, dynamic> json) =>
    PlacesFindPlaceFromTextResponse(
      htmlAttributions: (json['html_attributions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      candidates: (json['candidates'] as List<dynamic>)
          .map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String,
      errorMessage: json['error_message'] as String?,
      infoMessages: (json['info_messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlacesFindPlaceFromTextResponseToJson(
        PlacesFindPlaceFromTextResponse instance) =>
    <String, dynamic>{
      'html_attributions': instance.htmlAttributions,
      'candidates': instance.candidates,
      'status': instance.status,
      'error_message': instance.errorMessage,
      'info_messages': instance.infoMessages,
    };
