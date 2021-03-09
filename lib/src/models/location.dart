class Location {
  final double? lat;
  final double? lng;

  Location({this.lat, this.lng});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      lat: json['lat'] != null ? json['lat'].toDouble() : null,
      lng: json['lng'] != null ? json['lng'].toDouble() : null,
    );
  }
}
