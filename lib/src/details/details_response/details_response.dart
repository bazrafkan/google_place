import 'package:google_place/src/details/details_result/details_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'details_response.g.dart';

/// The Details response contains html Attributions and details and status
@JsonSerializable()
class DetailsResponse {
  final String? status;

  final List<String>? htmlAttributions;

  final DetailsResult? result;

  const DetailsResponse({
    this.status,
    this.htmlAttributions,
    this.result,
  });

  factory DetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsResponseToJson(this);
}
