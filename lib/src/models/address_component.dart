import 'package:json_annotation/json_annotation.dart';

part 'address_component.g.dart';

@JsonSerializable()
class AddressComponent {
  /// [longName] is the full text description or name of the address component as returned by the Geocoder.
  @JsonKey(name: "long_name")
  final String? longName;

  /// [shortName] is an abbreviated textual name for the address component, if available.
  /// For example, an address component for the state of Alaska may have a long_name of "Alaska"
  /// and a short_name of "AK" using the 2-letter postal abbreviation.
  @JsonKey(name: "short_name")
  final String? shortName;

  /// [types] is an array indicating the type of the address component.
  final List<String>? types;

  AddressComponent({
    this.longName,
    this.shortName,
    this.types,
  });

  factory AddressComponent.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentFromJson(json);

  Map<String, dynamic> toJson() => _$AddressComponentToJson(this);
}
