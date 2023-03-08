import 'package:json_annotation/json_annotation.dart';

part 'term.g.dart';

@JsonSerializable()
class Term {
  /// [offset] defining the start position of this term in the description
  final int? offset;

  /// [value] containing the text of the term
  final String? value;

  Term({this.offset, this.value});

  factory Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);

  Map<String, dynamic> toJson() => _$TermToJson(this);
}
