import 'dart:convert';

import 'package:google_place/src/models/debug_log.dart';
import 'package:google_place/src/search/candidate.dart';

class FindPlaceResult {
  final String status;
  final List<String> htmlAttributions;
  final String nextPageToken;
  final DebugLog debugLog;
  final List<Candidate> candidates;

  FindPlaceResult({
    this.status,
    this.htmlAttributions,
    this.nextPageToken,
    this.debugLog,
    this.candidates,
  });

  factory FindPlaceResult.fromJson(Map<String, dynamic> json) {
    return FindPlaceResult(
      status: json['status'],
      htmlAttributions: json['html_attributions'] != null
          ? (json['html_attributions'] as List<dynamic>).cast<String>()
          : null,
      nextPageToken: json['next_page_token'],
      debugLog: json['debug_log'] != null
          ? DebugLog.fromJson(json['debug_log'])
          : null,
      candidates: json['candidates'] != null
          ? json['candidates']
              .map<Candidate>((json) => Candidate.fromJson(json))
              .toList()
          : null,
    );
  }

  static FindPlaceResult parseFindPlaceResult(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return FindPlaceResult.fromJson(parsed);
  }
}
