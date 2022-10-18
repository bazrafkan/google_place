// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailsResponse _$DetailsResponseFromJson(Map json) => DetailsResponse(
      status: json['status'] as String?,
      htmlAttributions: (json['htmlAttributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      result: json['result'] == null
          ? null
          : DetailsResult.fromJson(
              Map<String, dynamic>.from(json['result'] as Map)),
    );

Map<String, dynamic> _$DetailsResponseToJson(DetailsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'htmlAttributions': instance.htmlAttributions,
      'result': instance.result?.toJson(),
    };
