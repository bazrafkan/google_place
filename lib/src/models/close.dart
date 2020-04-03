class Close {
  final int day;
  final String time;

  Close({this.day, this.time});

  factory Close.fromJson(Map<String, dynamic> json) {
    return Close(
      day: json['day'],
      time: json['time'],
    );
  }
}
