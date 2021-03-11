import 'dart:convert';

import 'package:google_place/src/models/debug_log.dart';
import 'package:google_place/src/search/search_candidate.dart';

/// The Find Place Search response contains html Attributions and search results and status
class FindPlaceResponse {
  final String? status;
  final List<String>? htmlAttributions;
  final String? nextPageToken;
  final DebugLog? debugLog;
  final List<SearchCandidate>? candidates;

  FindPlaceResponse({
    this.status,
    this.htmlAttributions,
    this.nextPageToken,
    this.debugLog,
    this.candidates,
  });

  factory FindPlaceResponse.fromJson(Map<String, dynamic> json) {
    return FindPlaceResponse(
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
              .map<SearchCandidate>((json) => SearchCandidate.fromJson(json))
              .toList()
          : null,
    );
  }

  static FindPlaceResponse parseFindPlaceResult(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return FindPlaceResponse.fromJson(parsed);
  }
}
