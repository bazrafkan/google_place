import 'package:google_place/src/models/address_component.dart';
import 'package:google_place/src/models/geometry.dart';
import 'package:google_place/src/models/opening_hours.dart';
import 'package:google_place/src/models/photo.dart';
import 'package:google_place/src/models/plus_code.dart';
import 'package:google_place/src/models/review.dart';

class DetailsResult {
  /// [addressComponents] is an array containing the separate components applicable to this address.
  final List<AddressComponent>? addressComponents;

  /// [businessStatus] indicates the operational status of the place, if it is a business.
  /// If no data exists, business_status is not returned. It can contain one of the following values:
  ///   OPERATIONAL
  ///   CLOSED_TEMPORARILY
  ///   CLOSED_PERMANENTLY
  final String? businessStatus;

  /// [adrAddress] is a representation of the place's address in the adr microformat.
  final String? adrAddress;

  /// [formattedAddress] is a string containing the human-readable address of this place.
  final String? formattedAddress;

  /// [formattedPhoneNumber] contains the place's phone number in its local format. For example,
  /// the formatted_phone_number for Google's Sydney, Australia office is (02) 9374 4000.
  final String? formattedPhoneNumber;

  /// [geometry] contains Geometry object.
  final Geometry? geometry;

  /// [icon] contains the URL of a suggested icon which may be displayed to the user when indicating this result on a map.
  final String? icon;

  /// [id] contains id.
  final String? id;

  /// [internationalPhoneNumber] contains the place's phone number in international format.
  /// International format includes the country code, and is prefixed with the plus (+) sign.
  /// For example, the international_phone_number for Google's Sydney, Australia office is +61 2 9374 4000.
  final String? internationalPhoneNumber;

  /// [name] contains the human-readable name for the returned result. For establishment results,
  /// this is usually the canonicalized business name.
  final String? name;

  /// [geometry] contains OpeningHours object.
  final OpeningHours? openingHours;

  /// [photos] an array of photo objects, each containing a reference to an image.
  final List<Photo>? photos;

  /// [placeId] A textual identifier that uniquely identifies a place. To retrieve information about the place,
  /// pass this identifier in the placeId field of a Places API request. For more information about place IDs.
  final String? placeId;

  /// [plusCode] is an encoded location reference, derived from latitude and longitude coordinates,
  /// that represents an area: 1/8000th of a degree by 1/8000th of a degree (about 14m x 14m at the equator) or smaller.
  /// Plus codes can be used as a replacement for street addresses in places where they do not exist
  /// (where buildings are not numbered or streets are not named).
  final PlusCode? plusCode;

  /// [rating] contains the place's rating, from 1.0 to 5.0, based on aggregated user reviews.
  final double? rating;

  /// [reference] contains reference.
  final String? reference;

  /// [reviews] a JSON array of up to five reviews. If a language parameter was specified in the Place Details request,
  /// the Places Service will bias the results to prefer reviews written in that language.
  final List<Review>? reviews;

  /// [scope] contains scope.
  final String? scope;

  /// [types] contains an array of feature types describing the given result.
  /// XML responses include multiple <type> elements if more than one type is assigned to the result.
  final List<String>? types;

  /// [url] contains the URL of the official Google page for this place. This will be the Google-owned page
  /// that contains the best available information about the place. Applications must link to or embed
  /// this page on any screen that shows detailed results about the place to the user.
  final String? url;

  /// [userRatingsTotal] is user ratings total.
  final int? userRatingsTotal;

  /// [utcOffset] contains the number of minutes this place’s current timezone is offset from UTC.
  /// For example, for places in Sydney, Australia during daylight saving time this would be 660
  /// (+11 hours from UTC), and for places in California outside of daylight saving time this would be -480 (-8 hours from UTC).
  final int? utcOffset;

  /// [vicinity] lists a simplified address for the place, including the street name, street number, and locality,
  /// but not the province/state, postal code, or country. For example, Google's Sydney, Australia office has a
  /// vicinity value of 48 Pirrama Road, Pyrmont.
  final String? vicinity;

  /// [website] lists the authoritative website for this place, such as a business' homepage.
  final String? website;

  /// [priceLevel] The price level of the place, on a scale of 0 to 4.
  /// The exact amount indicated by a specific value will vary from region to region. Price levels are interpreted as follows:
  ///   0 — Free
  ///   1 — Inexpensive
  ///   2 — Moderate
  ///   3 — Expensive
  ///   4 — Very Expensive
  final int? priceLevel;

  /// [permanentlyClosed] is a boolean flag indicating whether the place has shut down either permanently
  /// or temporarily (value true). If the place is operational, or if no data is available, the flag is absent from the response.
  @Deprecated(
      'permanently_closed is now deprecated. Instead, use business_status to get the operational status of businesses.')
  final bool? permanentlyClosed;

  DetailsResult({
    this.addressComponents,
    this.businessStatus,
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
      businessStatus: json['business_status'],
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
