import 'package:json_annotation/json_annotation.dart';

part 'matched_substring.g.dart';

@JsonSerializable()
class MatchedSubstring {
  final int? length;

  final int? offset;

  const MatchedSubstring({this.length, this.offset});

  factory MatchedSubstring.fromJson(Map<String, dynamic> json) =>
      _$MatchedSubstringFromJson(json);

  Map<String, dynamic> toJson() => _$MatchedSubstringToJson(this);
}
