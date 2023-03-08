import 'package:json_annotation/json_annotation.dart';

part 'debug_log.g.dart';

@JsonSerializable()
class DebugLog {
  final List<String>? line;

  DebugLog({this.line});

  factory DebugLog.fromJson(Map<String, dynamic> json) =>
      _$DebugLogFromJson(json);

  Map<String, dynamic> toJson() => _$DebugLogToJson(this);
}
