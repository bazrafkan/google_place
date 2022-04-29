import 'package:google_place/src/models/time_and_day/time_and_day.dart';
import 'package:json_annotation/json_annotation.dart';

part 'period.g.dart';

@JsonSerializable()
class Period {
  /// [close] may contain a pair of day and time objects describing when the place closes.
  /// Note: If a place is always open, the close section will be missing from the response.
  /// Clients can rely on always-open being represented as an open period containing day with
  /// value 0 and time with value 0000, and no close.
  final TimeAndDay? close;

  /// [open] contains a pair of day and time objects describing when the place opens.
  final TimeAndDay open;

  const Period({required this.open, this.close});

  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

  Map<String, dynamic> toJson() => _$PeriodToJson(this);
}
