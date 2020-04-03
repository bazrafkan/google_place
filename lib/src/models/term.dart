class Term {
  final int offset;
  final String value;

  Term({this.offset, this.value});

  factory Term.fromJson(Map<String, dynamic> json) {
    return Term(
      offset: json['offset'] as int,
      value: json['value'] as String,
    );
  }
}
