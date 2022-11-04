import 'package:google_place/src/places_details/place/place.dart';
import 'package:json_annotation/json_annotation.dart';

part 'places_nearby_search_response.g.dart';

/// The Near By Search response contains html Attributions and search results and status
@JsonSerializable()
class PlacesNearbySearchResponse {
  final List<String> htmlAttributions;

  final List<Place> results;

  // TODO: This should be an enum
  final String status;

  final String? errorMessage;

  final List<String>? infoMessages;

  final String? nextPageToken;

  const PlacesNearbySearchResponse({
    required this.htmlAttributions,
    required this.results,
    required this.status,
    this.errorMessage,
    this.infoMessages,
    this.nextPageToken,
  });

  factory PlacesNearbySearchResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesNearbySearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesNearbySearchResponseToJson(this);
}
