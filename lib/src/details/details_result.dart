import 'package:google_place/src/models/address_component.dart';
import 'package:google_place/src/models/geometry.dart';
import 'package:google_place/src/models/opening_hours.dart';
import 'package:google_place/src/models/photo.dart';
import 'package:google_place/src/models/plus_code.dart';
import 'package:google_place/src/models/review.dart';

class DetailsResult {
  final List<AddressComponent> addressComponents;
  final String adrAddress;
  final String formattedAddress;
  final String formattedPhoneNumber;
  final Geometry geometry;
  final String icon;
  final String id;
  final String internationalPhoneNumber;
  final String name;
  final OpeningHours openingHours;
  final List<Photo> photos;
  final String placeId;
  final PlusCode plusCode;
  final double rating;
  final String reference;
  final List<Review> reviews;
  final String scope;
  final List<String> types;
  final String url;
  final int userRatingsTotal;
  final int utcOffset;
  final String vicinity;
  final String website;
  final int priceLevel;
  final bool permanentlyClosed;

  DetailsResult({
    this.addressComponents,
    this.adrAddress,
    this.formattedAddress,
    this.formattedPhoneNumber,
    this.geometry,
    this.icon,
    this.id,
    this.internationalPhoneNumber,
    this.name,
    this.openingHours,
    this.photos,
    this.placeId,
    this.plusCode,
    this.rating,
    this.reference,
    this.reviews,
    this.scope,
    this.types,
    this.url,
    this.userRatingsTotal,
    this.utcOffset,
    this.vicinity,
    this.website,
    this.priceLevel,
    this.permanentlyClosed,
  });

  factory DetailsResult.fromJson(Map<String, dynamic> json) {
    return DetailsResult(
      addressComponents: json['address_components'] != null
          ? json['address_components']
              .map<AddressComponent>((json) => AddressComponent.fromJson(json))
              .toList()
          : null,
      adrAddress: json['adr_address'],
      formattedAddress: json['formatted_address'],
      formattedPhoneNumber: json['formatted_phone_number'],
      geometry:
          json['geometry'] != null ? Geometry.fromJson(json['geometry']) : null,
      icon: json['icon'],
      id: json['id'],
      internationalPhoneNumber: json['international_phone_number'],
      name: json['name'],
      openingHours: json['opening_hours'] != null
          ? OpeningHours.fromJson(json['opening_hours'])
          : null,
      photos: json['photos'] != null
          ? json['photos'].map<Photo>((json) => Photo.fromJson(json)).toList()
          : null,
      placeId: json['place_id'],
      plusCode: json['plus_code'] != null
          ? PlusCode.fromJson(json['plus_code'])
          : null,
      rating: json['rating'] != null ? json['rating'].toDouble() : null,
      reference: json['reference'],
      reviews: json['reviews'] != null
          ? json['reviews']
              .map<Review>((json) => Review.fromJson(json))
              .toList()
          : null,
      scope: json['scope'],
      types: json['types'] != null
          ? (json['types'] as List<dynamic>).cast<String>()
          : null,
      url: json['url'],
      userRatingsTotal: json['user_ratings_total'],
      utcOffset: json['utc_offset'],
      vicinity: json['vicinity'],
      website: json['website'],
      priceLevel: json['price_level'],
      permanentlyClosed: json['permanently_closed'],
    );
  }
}
