// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult(
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      businessStatus: json['business_status'] as String?,
      openingHours: json['opening_hours'] == null
          ? null
          : TimeAndDay.fromJson(json['opening_hours'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      plusCode: json['plus_code'] == null
          ? null
          : PlusCode.fromJson(json['plus_code'] as Map<String, dynamic>),
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
      'geometry': instance.geometry,
      'business_status': instance.businessStatus,
      'opening_hours': instance.openingHours,
      'photos': instance.photos,
      'plus_code': instance.plusCode,
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
