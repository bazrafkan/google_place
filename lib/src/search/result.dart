import 'package:google_place/src/models/geometry.dart';
import 'package:google_place/src/models/opening_hours.dart';
import 'package:google_place/src/models/photo.dart';
import 'package:google_place/src/models/plus_code.dart';

class Result {
  final Geometry geometry;
  final OpeningHours openingHours;
  final List<Photo> photos;
  final PlusCode plusCode;
  final String formattedAddress;
  final String name;
  final double rating;
  final String icon;
  final String id;
  final String placeId;
  final int priceLevel;
  final String reference;
  final String scope;
  final List<String> types;
  final int userRatingsTotal;
  final String vicinity;
  final bool permanentlyClosed;

  Result({
    this.geometry,
    this.openingHours,
    this.photos,
    this.plusCode,
    this.formattedAddress,
    this.name,
    this.rating,
    this.icon,
    this.id,
    this.placeId,
    this.priceLevel,
    this.reference,
    this.scope,
    this.types,
    this.userRatingsTotal,
    this.vicinity,
    this.permanentlyClosed,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      geometry:
          json['geometry'] != null ? Geometry.fromJson(json['geometry']) : null,
      openingHours: json['opening_hours'] != null
          ? OpeningHours.fromJson(json['opening_hours'])
          : null,
      photos: json['photos'] != null
          ? json['photos'].map<Photo>((json) => Photo.fromJson(json)).toList()
          : null,
      plusCode: json['plus_code'] != null
          ? PlusCode.fromJson(json['plus_code'])
          : null,
      formattedAddress: json['formatted_address'],
      name: json['name'],
      rating: json['rating'] != null ? json['rating'].toDouble() : null,
      icon: json['icon'],
      id: json['id'],
      placeId: json['place_id'],
      priceLevel: json['price_level'],
      reference: json['reference'],
      scope: json['scope'],
      types: json['types'] != null
          ? (json['types'] as List<dynamic>).cast<String>()
          : null,
      userRatingsTotal: json['user_ratings_total'],
      vicinity: json['vicinity'],
      permanentlyClosed: json['permanently_closed'],
    );
  }
}
