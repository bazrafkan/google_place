import 'package:google_place/src/models/main_text_matched_substring.dart';

class StructuredFormatting {
  final String mainText;
  final List<MainTextMatchedSubstring> mainTextMatchedSubstrings;
  final String secondaryText;

  StructuredFormatting(
      {this.mainText, this.mainTextMatchedSubstrings, this.secondaryText});

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) {
    return StructuredFormatting(
      mainText: json['main_text'] as String,
      mainTextMatchedSubstrings: json['main_text_matched_substrings']
          .map<MainTextMatchedSubstring>(
              (json) => MainTextMatchedSubstring.fromJson(json))
          .toList(),
      secondaryText: json['secondary_text'] as String,
    );
  }
}
