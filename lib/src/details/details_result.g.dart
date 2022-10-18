// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailsResult _$DetailsResultFromJson(Map json) => DetailsResult(
      addressComponents: (json['addressComponents'] as List<dynamic>?)
          ?.map((e) =>
              AddressComponent.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      businessStatus: json['businessStatus'] as String?,
      adrAddress: json['adrAddress'] as String?,
      formattedAddress: json['formattedAddress'] as String?,
      formattedPhoneNumber: json['formattedPhoneNumber'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(
              Map<String, dynamic>.from(json['geometry'] as Map)),
      icon: json['icon'] as String?,
      id: json['id'] as String?,
      internationalPhoneNumber: json['internationalPhoneNumber'] as String?,
      name: json['name'] as String?,
      openingHours: json['openingHours'] == null
          ? null
          : OpeningHours.fromJson(
              Map<String, dynamic>.from(json['openingHours'] as Map)),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      placeId: json['placeId'] as String?,
      plusCode: json['plusCode'] == null
          ? null
          : PlusCode.fromJson(
              Map<String, dynamic>.from(json['plusCode'] as Map)),
      rating: (json['rating'] as num?)?.toDouble(),
      reference: json['reference'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      scope: json['scope'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      userRatingsTotal: json['userRatingsTotal'] as int?,
      utcOffset: json['utcOffset'] as int?,
      vicinity: json['vicinity'] as String?,
      website: json['website'] as String?,
      priceLevel: json['priceLevel'] as int?,
      permanentlyClosed: json['permanentlyClosed'] as bool?,
    );

Map<String, dynamic> _$DetailsResultToJson(DetailsResult instance) =>
    <String, dynamic>{
      'addressComponents':
          instance.addressComponents?.map((e) => e.toJson()).toList(),
      'businessStatus': instance.businessStatus,
      'adrAddress': instance.adrAddress,
      'formattedAddress': instance.formattedAddress,
      'formattedPhoneNumber': instance.formattedPhoneNumber,
      'geometry': instance.geometry?.toJson(),
      'icon': instance.icon,
      'id': instance.id,
      'internationalPhoneNumber': instance.internationalPhoneNumber,
      'name': instance.name,
      'openingHours': instance.openingHours?.toJson(),
      'photos': instance.photos?.map((e) => e.toJson()).toList(),
      'placeId': instance.placeId,
      'plusCode': instance.plusCode?.toJson(),
      'rating': instance.rating,
      'reference': instance.reference,
      'reviews': instance.reviews?.map((e) => e.toJson()).toList(),
      'scope': instance.scope,
      'types': instance.types,
      'url': instance.url,
      'userRatingsTotal': instance.userRatingsTotal,
      'utcOffset': instance.utcOffset,
      'vicinity': instance.vicinity,
      'website': instance.website,
      'priceLevel': instance.priceLevel,
      'permanentlyClosed': instance.permanentlyClosed,
    };
