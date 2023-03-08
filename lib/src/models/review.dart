import 'package:json_annotation/json_annotation.dart';

part 'review.g.dart';

@JsonSerializable()
class Review {
  /// [authorName] the name of the user who submitted the review. Anonymous reviews are attributed to "A Google user".
  @JsonKey(name: "author_name")
  final String? authorName;

  /// [authorUrl] the URL to the user's Google Maps Local Guides profile, if available.
  @JsonKey(name: "author_url")
  final String? authorUrl;

  /// [language] an IETF language code indicating the language used in the user's review.
  /// This field contains the main language tag only, and not the secondary tag indicating country or region.
  /// For example, all the English reviews are tagged as 'en', and not 'en-AU' or 'en-UK' and so on.
  final String? language;

  /// [profilePhotoUrl] the URL to the user's profile photo, if available.
  @JsonKey(name: "profile_photo_url")
  final String? profilePhotoUrl;

  /// [rating] the user's overall rating for this place. This is a whole number, ranging from 1 to 5.
  final int? rating;

  /// [relativeTimeDescription] the time that the review was submitted, relative to the current time.
  @JsonKey(name: "relative_time_description")
  final String? relativeTimeDescription;

  /// [text] the user's review. When reviewing a location with Google Places, text reviews are considered optional.
  /// Therefore, this field may by empty. Note that this field may include simple HTML markup. For example,
  /// the entity reference &amp; may represent an ampersand character.
  final String? text;

  /// [time] the time that the review was submitted, measured in the number of seconds since since midnight, January 1, 1970 UTC.
  final int? time;

  Review({
    this.authorName,
    this.authorUrl,
    this.language,
    this.profilePhotoUrl,
    this.rating,
    this.relativeTimeDescription,
    this.text,
    this.time,
  });

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}
