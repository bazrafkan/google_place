import 'package:google_place/src/models/matched_substring/matched_substring.dart';
import 'package:google_place/src/models/structured_formatting/structured_formatting.dart';
import 'package:google_place/src/models/term/term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'autocomplete_prediction.g.dart';

@JsonSerializable()
class AutocompletePrediction {
  /// [description] contains the human-readable name for the returned result. For establishment results, this is usually
  /// the business name.
  final String? description;

  /// [distanceMeters] contains an integer indicating the straight-line distance between the predicted place,
  /// and the specified origin point, in meters. This field is only returned when the origin point is specified in the request.
  /// This field is not returned in predictions of type route.
  final int? distanceMeters;

  /// [id] contains id.
  final String? id;

  /// [matchedSubstrings] contains an array with offset value and length. These describe the location of the entered term in
  /// the prediction result text, so that the term can be highlighted if desired.
  final List<MatchedSubstring>? matchedSubstrings;

  /// [placeId] is a textual identifier that uniquely identifies a place. To retrieve information about the place,
  /// pass this identifier in the placeId field of a Places API request. For more information about place IDs.
  final String? placeId;

  /// [reference] contains reference.
  final String? reference;

  /// [structuredFormatting] provides pre-formatted text that can be shown in your autocomplete results
  final StructuredFormatting? structuredFormatting;

  /// Contains an array of terms identifying each section of the returned description
  /// (a section of the description is generally terminated with a comma).
  final List<Term>? terms;

  /// [types] contains an array of types that apply to this place. For example: [ "political", "locality" ] or
  /// [ "establishment", "geocode", "beauty_salon" ]. The array can contain multiple values.
  final List<String>? types;

  AutocompletePrediction({
    this.description,
    this.distanceMeters,
    this.id,
    this.matchedSubstrings,
    this.placeId,
    this.reference,
    this.structuredFormatting,
    this.terms,
    this.types,
  });

  factory AutocompletePrediction.fromJson(Map<String, dynamic> json) =>
      _$AutocompletePredictionFromJson(json);

  Map<String, dynamic> toJson() => _$AutocompletePredictionToJson(this);
}
