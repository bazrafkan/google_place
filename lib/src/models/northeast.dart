import 'package:json_annotation/json_annotation.dart';

part 'northeast.g.dart';

@JsonSerializable()
class Northeast {
  final double? lat;
  final double? lng;

  Northeast({this.lat, this.lng});

  factory Northeast.fromJson(Map<String, dynamic> json) =>
      _$NortheastFromJson(json);

  Map<String, dynamic> toJson() => _$NortheastToJson(this);
}
