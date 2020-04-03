class Photo {
  final String photoReference;
  final int height;
  final int width;
  final List<String> htmlAttributions;

  Photo({this.photoReference, this.height, this.width, this.htmlAttributions});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      photoReference: json['photo_reference'],
      height: json['height'],
      width: json['width'],
      htmlAttributions: json['html_attributions'] != null
          ? (json['html_attributions'] as List<dynamic>).cast<String>()
          : null,
    );
  }
}
