import 'package:google_place/src/models/northeast.dart';
import 'package:google_place/src/models/southwest.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bounds.g.dart';

@JsonSerializable()
class Bounds {
  final Northeast? northeast;
  final Southwest? southwest;

  Bounds({this.northeast, this.southwest});

  factory Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);

  Map<String, dynamic> toJson() => _$BoundsToJson(this);
}
