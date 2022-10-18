import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  /// [photoReference] a string used to identify the photo when you perform a Photo request.
  @JsonKey(name: "photo_reference")
  final String? photoReference;

  /// [height] the maximum height of the image.
  final int? height;

  /// [width] the maximum width of the image.
  final int? width;

  /// [htmlAttributions] contains any required attributions. This field will always be present, but may be empty.
  @JsonKey(name: "html_attributions")
  final List<String>? htmlAttributions;

  Photo({this.photoReference, this.height, this.width, this.htmlAttributions});

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
