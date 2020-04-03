import 'dart:convert';

import 'package:google_place/src/autocomplete/prediction.dart';

class AutocompleteResult {
  final String status;
  final List<Prediction> predictions;

  AutocompleteResult({this.status, this.predictions});

  factory AutocompleteResult.fromJson(Map<String, dynamic> json) {
    return AutocompleteResult(
      status: json['status'] as String,
      predictions: json['predictions'] != null
          ? json['predictions']
              .map<Prediction>((json) => Prediction.fromJson(json))
              .toList()
          : null,
    );
  }

  static AutocompleteResult parseAutocompleteResult(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return AutocompleteResult.fromJson(parsed);
  }
}
