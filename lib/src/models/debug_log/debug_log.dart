import 'package:json_annotation/json_annotation.dart';

part 'debug_log.g.dart';

// TODO: I don't think this is a real thing
@JsonSerializable()
class DebugLog {
  final List<String>? line;

  const DebugLog({this.line});

  factory DebugLog.fromJson(Map<String, dynamic> json) =>
      _$DebugLogFromJson(json);

  Map<String, dynamic> toJson() => _$DebugLogToJson(this);
}
