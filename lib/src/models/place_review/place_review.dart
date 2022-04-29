import 'package:json_annotation/json_annotation.dart';

part 'place_review.g.dart';

@JsonSerializable()
class PlaceReview {
  /// [authorName] the name of the user who submitted the review. Anonymous reviews are attributed to "A Google user".
  final String authorName;

  /// [rating] the user's overall rating for this place. This is a whole number, ranging from 1 to 5.
  final int rating;

  /// [relativeTimeDescription] the time that the review was submitted, relative to the current time.
  final String relativeTimeDescription;

  /// [time] the time that the review was submitted, measured in the number of seconds since since midnight, January 1, 1970 UTC.
  final int time;

  /// [authorUrl] the URL to the user's Google Maps Local Guides profile, if available.
  final String? authorUrl;

  /// [language] an IETF language code indicating the language used in the user's review.
  /// This field contains the main language tag only, and not the secondary tag indicating country or region.
  /// For example, all the English reviews are tagged as 'en', and not 'en-AU' or 'en-UK' and so on.
  final String? language;

  /// [profilePhotoUrl] the URL to the user's profile photo, if available.
  final String? profilePhotoUrl;

  /// [text] the user's review. When reviewing a location with Google Places, text reviews are considered optional.
  /// Therefore, this field may by empty. Note that this field may include simple HTML markup. For example,
  /// the entity reference &amp; may represent an ampersand character.
  final String? text;

  const PlaceReview({
    required this.authorName,
    required this.rating,
    required this.relativeTimeDescription,
    required this.time,
    this.authorUrl,
    this.language,
    this.profilePhotoUrl,
    this.text,
  });

  factory PlaceReview.fromJson(Map<String, dynamic> json) =>
      _$PlaceReviewFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceReviewToJson(this);
}
