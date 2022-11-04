import 'package:google_place/src/models/place_opening_hours_period_detail/place_opening_hours_period_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place_opening_hours_period.g.dart';

@JsonSerializable()
class PlaceOpeningHoursPeriod {
  /// [open] contains a pair of day and time objects describing when the place opens.
  final PlaceOpeningHoursPeriodDetail open;

  /// [close] may contain a pair of day and time objects describing when the place closes.
  /// Note: If a place is always open, the close section will be missing from the response.
  /// Clients can rely on always-open being represented as an open period containing day with
  /// value 0 and time with value 0000, and no close.
  final PlaceOpeningHoursPeriodDetail? close;

  const PlaceOpeningHoursPeriod({
    required this.open,
    this.close,
  });

  factory PlaceOpeningHoursPeriod.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursPeriodFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceOpeningHoursPeriodToJson(this);
}
