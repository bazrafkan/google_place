import 'package:google_place/src/places_details/place/place.dart';
import 'package:json_annotation/json_annotation.dart';

part 'places_details_response.g.dart';

/// The Details response contains html Attributions and details and status
@JsonSerializable()
class PlacesDetailsResponse {
  /// May contain a set of attributions about this listing which must be displayed to the user (some listings may not have attribution).
  final List<String> htmlAttributions;

  /// Contains the detailed information about the place requested.
  final Place result;

  /// Contains the status of the request, and may contain debugging information to help you track down why the request failed.
  final String? status;

  /// When the service returns additional information about the request specification, there may be an additional info_messages field within the response object. This field is only returned for successful requests. It may not always be returned, and its content is subject to change.
  final List<String>? infoMessages;

  const PlacesDetailsResponse({
    required this.htmlAttributions,
    required this.status,
    required this.result,
    this.infoMessages,
  });

  factory PlacesDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesDetailsResponseToJson(this);
}
