class MainTextMatchedSubstring {
  final int? length;
  final int? offset;

  MainTextMatchedSubstring({this.length, this.offset});

  factory MainTextMatchedSubstring.fromJson(Map<String, dynamic> json) {
    return MainTextMatchedSubstring(
      length: json['length'] as int?,
      offset: json['offset'] as int?,
    );
  }
}
