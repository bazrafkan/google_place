import 'package:google_place/src/models/close.dart';
import 'package:google_place/src/models/open.dart';

class Period {
  /// [close] may contain a pair of day and time objects describing when the place closes.
  /// Note: If a place is always open, the close section will be missing from the response.
  /// Clients can rely on always-open being represented as an open period containing day with
  /// value 0 and time with value 0000, and no close.
  final Close? close;

  /// [open] contains a pair of day and time objects describing when the place opens.
  final Open? open;

  Period({this.close, this.open});

  factory Period.fromJson(Map<String, dynamic> json) {
    return Period(
      close: json['close'] != null ? Close.fromJson(json['close']) : null,
      open: json['open'] != null ? Open.fromJson(json['open']) : null,
    );
  }
}
