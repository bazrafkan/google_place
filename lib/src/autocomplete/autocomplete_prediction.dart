import 'package:google_place/src/models/matched_substring.dart';
import 'package:google_place/src/models/structured_formatting.dart';
import 'package:google_place/src/models/term.dart';

class AutocompletePrediction {
  final String description;
  final int distanceMeters;
  final String id;
  final List<MatchedSubstring> matchedSubstrings;
  final String placeId;
  final String reference;
  final StructuredFormatting structuredFormatting;
  final List<Term> terms;
  final List<String> types;

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
      description: json['description'] as String,
      distanceMeters: json['distance_meters'] as int,
      id: json['id'] as String,
      matchedSubstrings: json['matched_substrings'] != null
          ? json['matched_substrings']
              .map<MatchedSubstring>((json) => MatchedSubstring.fromJson(json))
              .toList()
          : null,
      placeId: json['place_id'] as String,
      reference: json['reference'] as String,
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
