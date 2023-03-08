import 'package:json_annotation/json_annotation.dart';

part 'main_text_matched_substring.g.dart';

@JsonSerializable()
class MainTextMatchedSubstring {
  final int? length;
  final int? offset;

  MainTextMatchedSubstring({this.length, this.offset});

  factory MainTextMatchedSubstring.fromJson(Map<String, dynamic> json) =>
      _$MainTextMatchedSubstringFromJson(json);

  Map<String, dynamic> toJson() => _$MainTextMatchedSubstringToJson(this);
}
