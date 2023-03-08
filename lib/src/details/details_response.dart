import 'dart:convert';

import 'package:google_place/src/details/details_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'details_response.g.dart';

/// The Details response contains html Attributions and details and status
@JsonSerializable()
class DetailsResponse {
  final String? status;
  @JsonKey(name: "html_attributions")
  final List<String>? htmlAttributions;
  final DetailsResult? result;

  DetailsResponse({
    this.status,
    this.htmlAttributions,
    this.result,
  });
  factory DetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsResponseToJson(this);

  static DetailsResponse parseDetailsResult(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return DetailsResponse.fromJson(parsed);
  }
}
