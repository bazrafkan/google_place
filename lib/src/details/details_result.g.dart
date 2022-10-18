// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailsResult _$DetailsResultFromJson(Map json) => DetailsResult(
      addressComponents: (json['address_components'] as List<dynamic>?)
          ?.map((e) =>
              AddressComponent.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      businessStatus: json['business_status'] as String?,
      adrAddress: json['adr_address'] as String?,
      formattedAddress: json['formatted_address'] as String?,
      formattedPhoneNumber: json['formatted_phone_number'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(
              Map<String, dynamic>.from(json['geometry'] as Map)),
      icon: json['icon'] as String?,
      id: json['id'] as String?,
      internationalPhoneNumber: json['international_phone_number'] as String?,
      name: json['name'] as String?,
      openingHours: json['opening_hours'] == null
          ? null
          : OpeningHours.fromJson(
              Map<String, dynamic>.from(json['opening_hours'] as Map)),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      placeId: json['place_id'] as String?,
      plusCode: json['plus_code'] == null
          ? null
          : PlusCode.fromJson(
              Map<String, dynamic>.from(json['plus_code'] as Map)),
      rating: (json['rating'] as num?)?.toDouble(),
      reference: json['reference'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      scope: json['scope'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      userRatingsTotal: json['user_ratings_total'] as int?,
      utcOffset: json['utc_offset'] as int?,
      vicinity: json['vicinity'] as String?,
      website: json['website'] as String?,
      priceLevel: json['price_level'] as int?,
      permanentlyClosed: json['permanently_closed'] as bool?,
    );

Map<String, dynamic> _$DetailsResultToJson(DetailsResult instance) =>
    <String, dynamic>{
      'address_components':
          instance.addressComponents?.map((e) => e.toJson()).toList(),
      'business_status': instance.businessStatus,
      'adr_address': instance.adrAddress,
      'formatted_address': instance.formattedAddress,
      'formatted_phone_number': instance.formattedPhoneNumber,
      'geometry': instance.geometry?.toJson(),
      'icon': instance.icon,
      'id': instance.id,
      'international_phone_number': instance.internationalPhoneNumber,
      'name': instance.name,
      'opening_hours': instance.openingHours?.toJson(),
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'place_id': instance.placeId,
      'plus_code': instance.plusCode?.toJson(),
      'rating': instance.rating,
      'reference': instance.reference,
      'reviews': instance.reviews?.map((e) => e.toJson()).toList(),
      'scope': instance.scope,
      'types': instance.types,
      'url': instance.url,
      'user_ratings_total': instance.userRatingsTotal,
      'utc_offset': instance.utcOffset,
      'vicinity': instance.vicinity,
      'website': instance.website,
      'price_level': instance.priceLevel,
      'permanently_closed': instance.permanentlyClosed,
    };
