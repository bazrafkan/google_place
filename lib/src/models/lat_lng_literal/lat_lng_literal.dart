import 'package:json_annotation/json_annotation.dart';

part 'lat_lng_literal.g.dart';

/// A pair of latitude and longitude coordinates, stored as degrees.
@JsonSerializable()
class LatLngLiteral {
  final double lat;

  final double lng;

  /// Creates a geographical location specified in degrees [latitude] and
  /// [longitude].
  ///
  /// The latitude is clamped to the inclusive interval from -90.0 to +90.0.
  ///
  /// The longitude is normalized to the half-open interval from -180.0
  /// (inclusive) to +180.0 (exclusive)
  const LatLngLiteral({required this.lat, required this.lng});

  factory LatLngLiteral.fromJson(Map<String, dynamic> json) =>
      _$LatLngLiteralFromJson(json);

  Map<String, dynamic> toJson() => _$LatLngLiteralToJson(this);
}
