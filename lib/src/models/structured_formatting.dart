import 'package:google_place/src/models/main_text_matched_substring.dart';

class StructuredFormatting {
  /// [mainText] contains the main text of a prediction, usually the name of the place.
  final String? mainText;

  /// [mainTextMatchedSubstrings] contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  final List<MainTextMatchedSubstring>? mainTextMatchedSubstrings;

  /// [secondaryText] contains the secondary text of a prediction, usually the location of the place.
  final String? secondaryText;

  StructuredFormatting(
      {this.mainText, this.mainTextMatchedSubstrings, this.secondaryText});

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) {
    return StructuredFormatting(
      mainText: json['main_text'] as String?,
      mainTextMatchedSubstrings: json['main_text_matched_substrings']
          .map<MainTextMatchedSubstring>(
              (json) => MainTextMatchedSubstring.fromJson(json))
          .toList(),
      secondaryText: json['secondary_text'] as String?,
    );
  }
}
