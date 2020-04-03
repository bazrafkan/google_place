class Southwest {
  final double lat;
  final double lng;

  Southwest({this.lat, this.lng});

  factory Southwest.fromJson(Map<String, dynamic> json) {
    return Southwest(
      lat: json['lat'],
      lng: json['lng'],
    );
  }
}
