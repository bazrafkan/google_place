import 'package:google_place/src/models/lat_lon.dart';

/// [Locationbias] - Prefer results in a specified area, by specifying either a radius plus lat/lng,
/// or two lat/lng pairs representing the points of a rectangle.
/// If this parameter is not specified, the API uses IP address biasing by default.
class Locationbias {
  /// [ipbias] - Instructs the API to use IP address biasing.
  final bool? ipbias;

  /// [point] - A single lat/lng coordinate.
  final LatLon? point;

  /// [circular] - A string specifying radius in meters, plus lat/lng in decimal degrees.
  final Circular? circular;

  /// [rectangular] - A string specifying two lat/lng pairs in decimal degrees,
  /// representing the south/west and north/east points of a rectangle.
  final Rectangular? rectangular;

  Locationbias({this.ipbias, this.point, this.circular, this.rectangular}) {
    if (ipbias != null && ipbias!) {
      assert(point == null);
      assert(circular == null);
      assert(rectangular == null);
    }
    if (point != null) {
      assert(ipbias == null);
      assert(circular == null);
      assert(rectangular == null);
    }
    if (circular != null) {
      assert(ipbias == null);
      assert(point == null);
      assert(rectangular == null);
    }
    if (rectangular != null) {
      assert(ipbias == null);
      assert(point == null);
      assert(circular == null);
    }
    if (ipbias == null && ipbias!)
      assert((ipbias != null || ipbias != false) &&
          point != null &&
          circular != null &&
          rectangular != null);
  }
}

class Circular {
  final int radius;
  final LatLon latLng;

  Circular(this.radius, this.latLng);
}

class Rectangular {
  final LatLon southWest;
  final LatLon northEast;

  Rectangular(this.southWest, this.northEast);
}
