class PlusCode {
  final String globalCode;
  final String compoundCode;

  PlusCode({this.globalCode, this.compoundCode});

  factory PlusCode.fromJson(Map<String, dynamic> json) {
    return PlusCode(
      globalCode: json['global_code'],
      compoundCode: json['compound_code'],
    );
  }
}
