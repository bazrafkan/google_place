class Southwest {
  final double? lat;
  final double? lng;

  Southwest({this.lat, this.lng});

  factory Southwest.fromJson(Map<String, dynamic> json) {
    return Southwest(
      lat: json['lat'] != null ? json['lat'].toDouble() : null,
      lng: json['lng'] != null ? json['lng'].toDouble() : null,
    );
  }
}
