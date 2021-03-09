class DebugLog {
  final List<String>? line;

  DebugLog({this.line});

  factory DebugLog.fromJson(Map<String, dynamic> json) {
    return DebugLog(
      line: json['line'] != null
          ? (json['line'] as List<dynamic>).cast<String>()
          : null,
    );
  }
}
