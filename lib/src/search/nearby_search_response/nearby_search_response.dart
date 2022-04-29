import 'package:google_place/src/models/debug_log/debug_log.dart';
import 'package:google_place/src/search/search_result/search_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'nearby_search_response.g.dart';

/// The Near By Search response contains html Attributions and search results and status
@JsonSerializable()
class NearbySearchResponse {
  final String? status;

  final List<String>? htmlAttributions;

  final String? nextPageToken;

  final DebugLog? debugLog;

  final List<SearchResult>? results;

  const NearbySearchResponse({
    this.status,
    this.htmlAttributions,
    this.nextPageToken,
    this.debugLog,
    this.results,
  });

  factory NearbySearchResponse.fromJson(Map<String, dynamic> json) =>
      _$NearbySearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NearbySearchResponseToJson(this);
}
