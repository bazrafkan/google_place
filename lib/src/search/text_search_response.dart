import 'dart:convert';

import 'package:google_place/src/models/debug_log.dart';
import 'package:google_place/src/search/search_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'text_search_response.g.dart';

/// The Text Search response contains html Attributions and search results and status
@JsonSerializable()
class TextSearchResponse {
  final String? status;
  final List<String>? htmlAttributions;
  final String? nextPageToken;
  final DebugLog? debugLog;
  final List<SearchResult>? results;

  TextSearchResponse({
    this.status,
    this.htmlAttributions,
    this.nextPageToken,
    this.debugLog,
    this.results,
  });

  factory TextSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$TextSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TextSearchResponseToJson(this);

  static TextSearchResponse parseTextSearchResult(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return TextSearchResponse.fromJson(parsed);
  }
}
