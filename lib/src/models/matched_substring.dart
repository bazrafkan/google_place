class MatchedSubstring {
  final int? length;
  final int? offset;

  MatchedSubstring({this.length, this.offset});

  factory MatchedSubstring.fromJson(Map<String, dynamic> json) {
    return MatchedSubstring(
      length: json['length'] as int?,
      offset: json['offset'] as int?,
    );
  }
}
