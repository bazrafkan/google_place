import 'package:google_place/src/models/location/location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bounds.g.dart';

@JsonSerializable()
class Bounds {
  final Location? northeast;

  final Location? southwest;

  const Bounds({this.northeast, this.southwest});

  factory Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);

  Map<String, dynamic> toJson() => _$BoundsToJson(this);
}
