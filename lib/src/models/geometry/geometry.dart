import 'package:google_place/src/models/bounds/bounds.dart';
import 'package:google_place/src/models/lat_lng_literal/lat_lng_literal.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geometry.g.dart';

@JsonSerializable()
class Geometry {
  /// [location] contains the geocoded latitude,longitude value for this place.
  final LatLngLiteral location;

  /// [viewport] contains the preferred viewport when displaying this place on a map as a LatLngBounds if it is known.
  final Bounds viewport;

  const Geometry({
    required this.location,
    required this.viewport,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}
