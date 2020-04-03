import 'package:google_place/src/models/location.dart';
import 'package:google_place/src/models/viewport.dart';

class Geometry {
  final Location location;
  final Viewport viewport;

  Geometry({this.location, this.viewport});

  factory Geometry.fromJson(Map<String, dynamic> json) {
    return Geometry(
      location:
          json['location'] != null ? Location.fromJson(json['location']) : null,
      viewport:
          json['viewport'] != null ? Viewport.fromJson(json['viewport']) : null,
    );
  }
}
