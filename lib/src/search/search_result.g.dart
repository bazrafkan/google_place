// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map json) => SearchResult(
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(
              Map<String, dynamic>.from(json['geometry'] as Map)),
      businessStatus: json['businessStatus'] as String?,
      openingHours: json['openingHours'] == null
          ? null
          : OpeningHours.fromJson(
              Map<String, dynamic>.from(json['openingHours'] as Map)),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      plusCode: json['plusCode'] == null
          ? null
          : PlusCode.fromJson(
              Map<String, dynamic>.from(json['plusCode'] as Map)),
      formattedAddress: json['formattedAddress'] as String?,
      name: json['name'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      icon: json['icon'] as String?,
      id: json['id'] as String?,
      placeId: json['placeId'] as String?,
      priceLevel: json['priceLevel'] as int?,
      reference: json['reference'] as String?,
      scope: json['scope'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userRatingsTotal: json['userRatingsTotal'] as int?,
      vicinity: json['vicinity'] as String?,
      permanentlyClosed: json['permanentlyClosed'] as bool?,
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'geometry': instance.geometry?.toJson(),
      'businessStatus': instance.businessStatus,
      'openingHours': instance.openingHours?.toJson(),
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'plusCode': instance.plusCode?.toJson(),
      'formattedAddress': instance.formattedAddress,
      'name': instance.name,
      'rating': instance.rating,
      'icon': instance.icon,
      'id': instance.id,
      'placeId': instance.placeId,
      'priceLevel': instance.priceLevel,
      'reference': instance.reference,
      'scope': instance.scope,
      'types': instance.types,
      'userRatingsTotal': instance.userRatingsTotal,
      'vicinity': instance.vicinity,
      'permanentlyClosed': instance.permanentlyClosed,
    };
