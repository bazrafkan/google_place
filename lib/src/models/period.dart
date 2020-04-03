import 'package:google_place/src/models/close.dart';
import 'package:google_place/src/models/open.dart';

class Period {
  final Close close;
  final Open open;

  Period({this.close, this.open});

  factory Period.fromJson(Map<String, dynamic> json) {
    return Period(
      close: json['close'] != null ? Close.fromJson(json['close']) : null,
      open: json['open'] != null ? Open.fromJson(json['open']) : null,
    );
  }
}
