import 'dart:convert';

import 'package:google_place/src/autocomplete/autocomplete_prediction.dart';

/// The Autocomplete response contains place predictions and status
class AutocompleteResponse {
  final String? status;
  final List<AutocompletePrediction>? predictions;

  AutocompleteResponse({this.status, this.predictions});

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) {
    return AutocompleteResponse(
      status: json['status'] as String?,
      predictions: json['predictions'] != null
          ? json['predictions']
              .map<AutocompletePrediction>(
                  (json) => AutocompletePrediction.fromJson(json))
              .toList()
          : null,
    );
  }

  static AutocompleteResponse parseAutocompleteResult(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return AutocompleteResponse.fromJson(parsed);
  }
}
