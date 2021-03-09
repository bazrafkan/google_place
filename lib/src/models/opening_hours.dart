import 'package:google_place/src/models/period.dart';

class OpeningHours {
  /// [openNow] is a boolean value indicating if the place is open at the current time.
  final bool? openNow;

  /// [weekdayText] is an array of seven strings representing the formatted opening hours
  /// for each day of the week. If a language parameter was specified in the Place Details request,
  /// the Places Service will format and localize the opening hours appropriately for that language.
  /// The ordering of the elements in this array depends on the language parameter.
  /// ∂Some languages start the week on Monday while others start on Sunday.
  final List<String>? weekdayText;

  /// [periods] is an array of opening periods covering seven days, starting from Sunday, in chronological order.
  final List<Period>? periods;

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
