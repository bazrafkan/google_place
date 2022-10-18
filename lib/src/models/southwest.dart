import 'package:json_annotation/json_annotation.dart';

part 'southwest.g.dart';

@JsonSerializable()
class Southwest {
  final double? lat;
  final double? lng;

  Southwest({this.lat, this.lng});

  factory Southwest.fromJson(Map<String, dynamic> json) =>
      _$SouthwestFromJson(json);

  Map<String, dynamic> toJson() => _$SouthwestToJson(this);
}
