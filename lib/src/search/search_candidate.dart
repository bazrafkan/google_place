import 'package:google_place/src/models/geometry.dart';
import 'package:google_place/src/models/opening_hours.dart';
import 'package:google_place/src/models/photo.dart';
import 'package:google_place/src/models/plus_code.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_candidate.g.dart';

@JsonSerializable()
class SearchCandidate {
  /// [geometry] contains geometry information about the result,
  /// generally including the location (geocode) of the place and (optionally)
  /// the viewport identifying its general area of coverage.
  final Geometry? geometry;

  /// [businessStatus] indicates the operational status of the place, if it is a business.
  /// If no data exists, business_status is not returned. It can contain one of the following values:
  ///   OPERATIONAL
  ///   CLOSED_TEMPORARILY
  ///   CLOSED_PERMANENTLY
  @JsonKey(name: "business_status")
  final String? businessStatus;

  /// [openingHours] show opening hours
  @JsonKey(name: "opening_hours")
  final OpeningHours? openingHours;

  /// [photos] an array of photo objects, each containing a reference to an image.
  final List<Photo>? photos;

  /// [plusCode] is an encoded location reference, derived from latitude and longitude coordinates,
  /// that represents an area: 1/8000th of a degree by 1/8000th of a degree (about 14m x 14m at the equator) or smaller.
  /// Plus codes can be used as a replacement for street addresses in places where they do not exist
  /// (where buildings are not numbered or streets are not named).
  @JsonKey(name: "plus_code")
  final PlusCode? plusCode;

  /// [formattedAddress] is a string containing the human-readable address of this place.
  /// Often this address is equivalent to the "postal address".
  @JsonKey(name: "formatted_address")
  final String? formattedAddress;

  /// [name] contains the human-readable name for the returned result.
  /// For establishment results, this is usually the business name.
  final String? name;

  /// [rating] contains the place's rating, from 1.0 to 5.0, based on aggregated user reviews.
  final double? rating;

  /// [icon] contains the URL of a recommended icon which may be displayed to the user when indicating this result.
  final String? icon;

  /// [id] contains id.
  final String? id;

  /// [placeId] a textual identifier that uniquely identifies a place. To retrieve information about the place,
  /// pass this identifier in the placeId field of a Places API request. For more information about place IDs.
  @JsonKey(name: "place_id")
  final String? placeId;

  /// [priceLevel] The price level of the place, on a scale of 0 to 4.
  /// The exact amount indicated by a specific value will vary from region to region. Price levels are interpreted as follows:
  ///   0 — Free
  ///   1 — Inexpensive
  ///   2 — Moderate
  ///   3 — Expensive
  ///   4 — Very Expensive
  @JsonKey(name: "price_level")
  final int? priceLevel;

  /// [reference] contains reference.
  final String? reference;

  /// [scope] contains scope.
  final String? scope;

  /// [types] contains an array of feature types describing the given result. See the list of supported types.
  /// XML responses include multiple <type> elements if more than one type is assigned to the result.
  final List<String>? types;

  /// [userRatingsTotal] is user ratings total.
  @JsonKey(name: "user_ratings_total")
  final int? userRatingsTotal;

  /// [vicinity] contains a feature name of a nearby location. Often this feature refers to a street or
  /// neighborhood within the given results. The vicinity property is only returned for a Nearby Search.
  final String? vicinity;

  /// [permanentlyClosed] is a boolean flag indicating whether the place has shut down either permanently
  /// or temporarily (value true). If the place is operational, or if no data is available, the flag is absent from the response.
  @Deprecated(
      'permanently_closed is now deprecated. Instead, use business_status to get the operational status of businesses.')
  @JsonKey(name: "permanently_closed")
  final bool? permanentlyClosed;

  SearchCandidate({
    this.geometry,
    this.businessStatus,
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

  factory SearchCandidate.fromJson(Map<String, dynamic> json) =>
      _$SearchCandidateFromJson(json);

  Map<String, dynamic> toJson() => _$SearchCandidateToJson(this);
}
