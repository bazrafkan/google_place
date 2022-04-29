import 'package:json_annotation/json_annotation.dart';

part 'place_photo.g.dart';

@JsonSerializable()
class PlacePhoto {
  /// [photoReference] a string used to identify the photo when you perform a Photo request.
  final String photoReference;

  /// [height] the maximum height of the image.
  final int height;

  /// [width] the maximum width of the image.
  final int width;

  /// [htmlAttributions] contains any required attributions. This field will always be present, but may be empty.
  final List<String> htmlAttributions;

  const PlacePhoto({
    required this.photoReference,
    required this.height,
    required this.width,
    required this.htmlAttributions,
  });

  factory PlacePhoto.fromJson(Map<String, dynamic> json) =>
      _$PlacePhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PlacePhotoToJson(this);
}
