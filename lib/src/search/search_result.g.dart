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
      businessStatus: json['business_status'] as String?,
      openingHours: json['opening_hours'] == null
          ? null
          : OpeningHours.fromJson(
              Map<String, dynamic>.from(json['opening_hours'] as Map)),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      plusCode: json['plus_code'] == null
          ? null
          : PlusCode.fromJson(
              Map<String, dynamic>.from(json['plus_code'] as Map)),
      formattedAddress: json['formatted_address'] as String?,
      name: json['name'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      icon: json['icon'] as String?,
      id: json['id'] as String?,
      placeId: json['place_id'] as String?,
      priceLevel: json['price_level'] as int?,
      reference: json['reference'] as String?,
      scope: json['scope'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      userRatingsTotal: json['user_ratings_total'] as int?,
      vicinity: json['vicinity'] as String?,
      permanentlyClosed: json['permanently_closed'] as bool?,
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'geometry': instance.geometry?.toJson(),
      'business_status': instance.businessStatus,
      'opening_hours': instance.openingHours?.toJson(),
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'plus_code': instance.plusCode?.toJson(),
      'formatted_address': instance.formattedAddress,
      'name': instance.name,
      'rating': instance.rating,
      'icon': instance.icon,
      'id': instance.id,
      'place_id': instance.placeId,
      'price_level': instance.priceLevel,
      'reference': instance.reference,
      'scope': instance.scope,
      'types': instance.types,
      'user_ratings_total': instance.userRatingsTotal,
      'vicinity': instance.vicinity,
      'permanently_closed': instance.permanentlyClosed,
    };
