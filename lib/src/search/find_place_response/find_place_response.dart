import 'package:google_place/src/models/debug_log/debug_log.dart';
import 'package:google_place/src/search/search_result/search_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'find_place_response.g.dart';

/// The Find Place Search response contains html Attributions and search results and status
@JsonSerializable()
class FindPlaceResponse {
  final String? status;

  final List<String>? htmlAttributions;

  final String? nextPageToken;

  final DebugLog? debugLog;

  final List<SearchResult>? candidates;

  const FindPlaceResponse({
    this.status,
    this.htmlAttributions,
    this.nextPageToken,
    this.debugLog,
    this.candidates,
  });

  factory FindPlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$FindPlaceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FindPlaceResponseToJson(this);
}
