import 'dart:convert';

import 'package:google_place/src/autocomplete/autocomplete_prediction.dart';
import 'package:json_annotation/json_annotation.dart';

part 'autocomplete_response.g.dart';

/// The Autocomplete response contains place predictions and status
@JsonSerializable()
class AutocompleteResponse {
  final String? status;
  final List<AutocompletePrediction>? predictions;

  AutocompleteResponse({this.status, this.predictions});

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AutocompleteResponseToJson(this);

  static AutocompleteResponse parseAutocompleteResult(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return AutocompleteResponse.fromJson(parsed);
  }
}
