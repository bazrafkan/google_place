// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structured_formatting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructuredFormatting _$StructuredFormattingFromJson(Map json) =>
    StructuredFormatting(
      mainText: json['mainText'] as String?,
      mainTextMatchedSubstrings:
          (json['mainTextMatchedSubstrings'] as List<dynamic>?)
              ?.map((e) => MainTextMatchedSubstring.fromJson(
                  Map<String, dynamic>.from(e as Map)))
              .toList(),
      secondaryText: json['secondaryText'] as String?,
    );

Map<String, dynamic> _$StructuredFormattingToJson(
        StructuredFormatting instance) =>
    <String, dynamic>{
      'mainText': instance.mainText,
      'mainTextMatchedSubstrings':
          instance.mainTextMatchedSubstrings?.map((e) => e.toJson()).toList(),
      'secondaryText': instance.secondaryText,
    };
