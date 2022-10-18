import 'package:google_place/src/models/northeast.dart';
import 'package:google_place/src/models/southwest.dart';
import 'package:json_annotation/json_annotation.dart';

part 'viewport.g.dart';

@JsonSerializable()
class Viewport {
  final Northeast? northeast;
  final Southwest? southwest;

  Viewport({this.northeast, this.southwest});

  factory Viewport.fromJson(Map<String, dynamic> json) =>
      _$ViewportFromJson(json);

  Map<String, dynamic> toJson() => _$ViewportToJson(this);
}
