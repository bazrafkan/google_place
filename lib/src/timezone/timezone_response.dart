import 'dart:convert';

class TimeZoneResponse {
  String? status;

  int? dstOffset;
  int? rawOffset;

  String? timeZoneId;

  String? timeZoneName;
  TimeZoneResponse({
    this.status,
    this.dstOffset,
    this.rawOffset,
    this.timeZoneId,
    this.timeZoneName,
  });

  factory TimeZoneResponse.fromJson(Map<String, dynamic> json) {
    return TimeZoneResponse(
      status: json['status'] ?? "",
      dstOffset: json['dstOffset'] ?? 0,
      rawOffset: json['rawOffset'] ?? 0,
      timeZoneId: json['timeZoneId'] ?? "",
      timeZoneName: json['timeZoneName'] ?? "",
    );
  }

  static TimeZoneResponse parseTimeZoneResult(String responseBody) {
    final parsed = json.decode(responseBody).cast<String, dynamic>();
    return TimeZoneResponse.fromJson(parsed);
  }
}
