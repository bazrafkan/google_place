class Northeast {
  final double? lat;
  final double? lng;

  Northeast({this.lat, this.lng});

  factory Northeast.fromJson(Map<String, dynamic> json) {
    return Northeast(
      lat: json['lat'] != null ? json['lat'].toDouble() : null,
      lng: json['lng'] != null ? json['lng'].toDouble() : null,
    );
  }
}
