// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesDetailsResponse _$PlacesDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    PlacesDetailsResponse(
      htmlAttributions: (json['html_attributions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      status: json['status'] as String?,
      result: Place.fromJson(json['result'] as Map<String, dynamic>),
      infoMessages: (json['info_messages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlacesDetailsResponseToJson(
        PlacesDetailsResponse instance) =>
    <String, dynamic>{
      'html_attributions': instance.htmlAttributions,
      'result': instance.result,
      'status': instance.status,
      'info_messages': instance.infoMessages,
    };
