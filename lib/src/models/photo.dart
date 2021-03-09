class Photo {
  /// [photoReference] a string used to identify the photo when you perform a Photo request.
  final String? photoReference;

  /// [height] the maximum height of the image.
  final int? height;

  /// [width] the maximum width of the image.
  final int? width;

  /// [htmlAttributions] contains any required attributions. This field will always be present, but may be empty.
  final List<String>? htmlAttributions;

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
