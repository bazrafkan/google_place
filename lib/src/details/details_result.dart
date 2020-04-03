import 'dart:convert';

import 'package:google_place/src/details/result.dart';

class DetailsResult {
  final String status;
  final List<String> htmlAttributions;
  final Result results;

  DetailsResult({
    this.status,
    this.htmlAttributions,
    this.results,
  });

  factory DetailsResult.fromJson(Map<String, dynamic> json) {
    return DetailsResult(
      status: json['status'],
      htmlAttributions: json['html_attributions'] != null
          ? (json['html_attributions'] as List<dynamic>).cast<String>()
          : null,
      results: json['result'] != null ? Result.fromJson(json['result']) : null,
    );
  }

  static DetailsResult parseDetailsResult(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return DetailsResult.fromJson(parsed);
  }
}
