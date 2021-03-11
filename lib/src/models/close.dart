class Close {
  /// [day] a number from 0–6, corresponding to the days of the week, starting on Sunday. For example, 2 means Tuesday.
  final int? day;

  /// [time] may contain a time of day in 24-hour hhmm format. Values are in the range 0000–2359.
  /// The time will be reported in the place’s time zone.
  final String? time;

  Close({this.day, this.time});

  factory Close.fromJson(Map<String, dynamic> json) {
    return Close(
      day: json['day'],
      time: json['time'],
    );
  }
}
