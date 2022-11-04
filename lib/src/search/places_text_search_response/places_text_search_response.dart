import 'package:google_place/src/places_details/place/place.dart';
import 'package:json_annotation/json_annotation.dart';

part 'places_text_search_response.g.dart';

/// The Text Search response contains html Attributions and search results and status
@JsonSerializable()
class PlacesTextSearchResponse {
  final List<String> htmlAttributions;

  final List<Place> results;

  final String status;

  final String? errorMessage;

  final List<String>? infoMessages;

  final String? nextPageToken;

  const PlacesTextSearchResponse({
    required this.htmlAttributions,
    required this.results,
    required this.status,
    this.errorMessage,
    this.infoMessages,
    this.nextPageToken,
  });

  factory PlacesTextSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesTextSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesTextSearchResponseToJson(this);
}
