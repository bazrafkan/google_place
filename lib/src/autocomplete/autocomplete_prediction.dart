import 'package:google_place/src/models/matched_substring.dart';
import 'package:google_place/src/models/structured_formatting.dart';
import 'package:google_place/src/models/term.dart';

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

  /// contains an array of terms identifying each section of the returned description
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

  factory AutocompletePrediction.fromJson(Map<String, dynamic> json) {
    return AutocompletePrediction(
      description: json['description'] as String?,
      distanceMeters: json['distance_meters'] as int?,
      id: json['id'] as String?,
      matchedSubstrings: json['matched_substrings'] != null
          ? json['matched_substrings']
              .map<MatchedSubstring>((json) => MatchedSubstring.fromJson(json))
              .toList()
          : null,
      placeId: json['place_id'] as String?,
      reference: json['reference'] as String?,
      structuredFormatting: json['structured_formatting'] != null
          ? StructuredFormatting.fromJson(json['structured_formatting'])
          : null,
      terms: json['terms'] != null
          ? json['terms'].map<Term>((json) => Term.fromJson(json)).toList()
          : null,
      types: json['types'] != null
          ? (json['types'] as List<dynamic>).cast<String>()
          : null,
    );
  }
}
