class Open {
  final int day;
  final String time;

  Open({this.day, this.time});

  factory Open.fromJson(Map<String, dynamic> json) {
    return Open(
      day: json['day'],
      time: json['time'],
    );
  }
}
