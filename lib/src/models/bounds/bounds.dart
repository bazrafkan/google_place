import 'package:google_place/src/models/lat_lng_literal/lat_lng_literal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bounds.g.dart';

/// A rectangle in geographical coordinates from points at the southwest and northeast corners.
@JsonSerializable()
class Bounds {
  final LatLngLiteral northeast;

  final LatLngLiteral southwest;

  const Bounds({
    required this.northeast,
    required this.southwest,
  });

  factory Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);

  Map<String, dynamic> toJson() => _$BoundsToJson(this);
}
