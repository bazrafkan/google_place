import 'package:json_annotation/json_annotation.dart';

part 'plus_code.g.dart';

@JsonSerializable()
class PlusCode {
  /// [globalCode] is a 4 character area code and 6 character or longer local code (849VCWC8+R9).
  final String? globalCode;

  /// [compoundCode] is a 6 character or longer local code with an explicit location (CWC8+R9, Mountain View, CA, USA).
  final String? compoundCode;

  const PlusCode({this.globalCode, this.compoundCode});

  factory PlusCode.fromJson(Map<String, dynamic> json) =>
      _$PlusCodeFromJson(json);

  Map<String, dynamic> toJson() => _$PlusCodeToJson(this);
}
