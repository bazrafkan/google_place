// TODO: Why do we have this when we have Location?
class LatLon {
  const LatLon(double latitude, double longitude)
      : latitude =
            (latitude < -90.0 ? -90.0 : (90.0 < latitude ? 90.0 : latitude)),
        longitude = (longitude + 180.0) % 360.0 - 180.0;

  /// The latitude in degrees between -90.0 and 90.0, both inclusive.
  final double latitude;

  /// The longitude in degrees between -180.0 (inclusive) and 180.0 (exclusive).
  final double longitude;

  @override
  String toString() => '$runtimeType($latitude, $longitude)';
}
