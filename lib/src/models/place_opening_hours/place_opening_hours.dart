import 'package:google_place/src/models/place_opening_hours_period/place_opening_hours_period.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_opening_hours.g.dart';

/// An object describing the opening hours of a place.
@JsonSerializable()
class PlaceOpeningHours {
  /// [openNow] is a boolean value indicating if the place is open at the current time.
  final bool? openNow;

  /// [weekdayText] is an array of seven strings representing the formatted opening hours
  /// for each day of the week. If a language parameter was specified in the Place Details request,
  /// the Places Service will format and localize the opening hours appropriately for that language.
  /// The ordering of the elements in this array depends on the language parameter.
  /// ∂Some languages start the week on Monday while others start on Sunday.
  @JsonKey(defaultValue: <String>[])
  final List<String> weekdayText;

  /// [periods] is an array of opening periods covering seven days, starting from Sunday, in chronological order.
  @JsonKey(defaultValue: <PlaceOpeningHoursPeriod>[])
  final List<PlaceOpeningHoursPeriod> periods;

  const PlaceOpeningHours({
    required this.openNow,
    required this.weekdayText,
    required this.periods,
  });

  factory PlaceOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceOpeningHoursToJson(this);
}
