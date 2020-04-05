import 'package:google_place/src/models/bounds.dart';
import 'package:google_place/src/models/location.dart';
import 'package:google_place/src/models/viewport.dart';

class Geometry {
  final Location location;
  final Viewport viewport;
  final Bounds bounds;

  Geometry({this.location, this.viewport, this.bounds});

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
      location:
          json['location'] != null ? Location.fromJson(json['location']) : null,
      viewport:
          json['viewport'] != null ? Viewport.fromJson(json['viewport']) : null,
      bounds: json['bounds'] != null ? Bounds.fromJson(json['bounds']) : null,
    );
  }
}
