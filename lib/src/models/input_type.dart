import 'package:json_annotation/json_annotation.dart';

/// [InputType] - The type of input. This can be one of either textquery or phonenumber.
/// Phone numbers must be in international format (prefixed by a plus sign ("+"),
/// followed by the country code, then the phone number itself).
@JsonEnum(fieldRename: FieldRename.snake)
enum InputType { textQuery, phoneNumber }
