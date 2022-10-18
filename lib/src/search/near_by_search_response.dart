import 'dart:convert';

import 'package:google_place/src/models/debug_log.dart';
import 'package:google_place/src/search/search_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'near_by_search_response.g.dart';

/// The Near By Search response contains html Attributions and search results and status
@JsonSerializable()
class NearBySearchResponse {
  final String? status;
  final List<String>? htmlAttributions;
  final String? nextPageToken;
  final DebugLog? debugLog;
  final List<SearchResult>? results;

  NearBySearchResponse({
    this.status,
    this.htmlAttributions,
    this.nextPageToken,
    this.debugLog,
    this.results,
  });

  factory NearBySearchResponse.fromJson(Map<String, dynamic> json) =>
      _$NearBySearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NearBySearchResponseToJson(this);

  static NearBySearchResponse parseNearBySearchResult(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return NearBySearchResponse.fromJson(parsed);
  }
}
