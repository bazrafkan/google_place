// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailsResponse _$DetailsResponseFromJson(Map<String, dynamic> json) =>
    DetailsResponse(
      status: json['status'] as String?,
      htmlAttributions: (json['html_attributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      result: json['result'] == null
          ? null
          : DetailsResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DetailsResponseToJson(DetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'html_attributions': instance.htmlAttributions,
      'result': instance.result,
    };
