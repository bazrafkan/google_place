class Term {
  /// [offset] defining the start position of this term in the description
  final int? offset;

  /// [value] containing the text of the term
  final String? value;

  Term({this.offset, this.value});

  factory Term.fromJson(Map<String, dynamic> json) {
    return Term(
      offset: json['offset'] as int?,
      value: json['value'] as String?,
    );
  }
}
