import 'package:google_place/src/models/period.dart';

class OpeningHours {
  final bool openNow;
  final List<String> weekdayText;
  final List<Period> periods;

  OpeningHours({
    this.openNow,
    this.weekdayText,
    this.periods,
  });

  factory OpeningHours.fromJson(Map<String, dynamic> json) {
    return OpeningHours(
      openNow: json['open_now'],
      weekdayText: json['weekday_text'] != null
          ? (json['weekday_text'] as List<dynamic>).cast<String>()
          : null,
      periods: json['periods'] != null
          ? json['periods']
              .map<Period>((json) => Period.fromJson(json))
              .toList()
          : null,
    );
  }
}
