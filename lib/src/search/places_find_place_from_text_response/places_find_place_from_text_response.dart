import 'package:google_place/src/places_details/place/place.dart';
import 'package:json_annotation/json_annotation.dart';

part 'places_find_place_from_text_response.g.dart';

/// The Find Place Search response contains html Attributions and search results and status
@JsonSerializable()
class PlacesFindPlaceFromTextResponse {
  final List<String> htmlAttributions;

  final List<Place> candidates;

  final String status;

  final String? errorMessage;

  final List<String>? infoMessages;

  const PlacesFindPlaceFromTextResponse({
    required this.htmlAttributions,
    required this.candidates,
    required this.status,
    this.errorMessage,
    this.infoMessages,
  });

  factory PlacesFindPlaceFromTextResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesFindPlaceFromTextResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$PlacesFindPlaceFromTextResponseToJson(this);
}
