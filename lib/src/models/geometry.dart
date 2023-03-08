import 'package:google_place/src/models/bounds.dart';
import 'package:google_place/src/models/location.dart';
import 'package:google_place/src/models/viewport.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geometry.g.dart';

@JsonSerializable()
class Geometry {
  /// [location] contains the geocoded latitude,longitude value for this place.
  final Location? location;

  /// [viewport] contains the preferred viewport when displaying this place on a map as a LatLngBounds if it is known.
  final Viewport? viewport;

  /// [bounds] contains bounds object
  final Bounds? bounds;

  Geometry({this.location, this.viewport, this.bounds});

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryToJson(this);
}
