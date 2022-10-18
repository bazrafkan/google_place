import 'package:google_place/src/models/main_text_matched_substring.dart';

import 'package:json_annotation/json_annotation.dart';

part 'structured_formatting.g.dart';

@JsonSerializable()
class StructuredFormatting {
  /// [mainText] contains the main text of a prediction, usually the name of the place.
  @JsonKey(name: "main_text")
  final String? mainText;

  /// [mainTextMatchedSubstrings] contains an array with offset value and length.
  /// These describe the location of the entered term in the prediction result text,
  /// so that the term can be highlighted if desired.
  @JsonKey(name: "main_text_matched_substrings")
  final List<MainTextMatchedSubstring>? mainTextMatchedSubstrings;

  /// [secondaryText] contains the secondary text of a prediction, usually the location of the place.
  @JsonKey(name: "secondary_text")
  final String? secondaryText;

  StructuredFormatting(
      {this.mainText, this.mainTextMatchedSubstrings, this.secondaryText});

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingFromJson(json);

  Map<String, dynamic> toJson() => _$StructuredFormattingToJson(this);
}
