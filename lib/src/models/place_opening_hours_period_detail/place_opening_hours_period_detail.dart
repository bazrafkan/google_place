import 'package:json_annotation/json_annotation.dart';

part 'place_opening_hours_period_detail.g.dart';

@JsonSerializable()
class PlaceOpeningHoursPeriodDetail {
  /// [day] a number from 0–6, corresponding to the days of the week, starting on Sunday. For example, 2 means Tuesday.
  final int day;

  /// [time] may contain a time of day in 24-hour hhmm format. Values are in the range 0000–2359.
  /// The time will be reported in the place’s time zone.
  final String time;

  const PlaceOpeningHoursPeriodDetail({
    required this.day,
    required this.time,
  });

  factory PlaceOpeningHoursPeriodDetail.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursPeriodDetailFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceOpeningHoursPeriodDetailToJson(this);
}
