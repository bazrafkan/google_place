// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpeningHours _$OpeningHoursFromJson(Map<String, dynamic> json) => OpeningHours(
      openNow: json['open_now'] as bool?,
      weekdayText: (json['weekday_text'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OpeningHoursToJson(OpeningHours instance) =>
    <String, dynamic>{
      'open_now': instance.openNow,
      'weekday_text': instance.weekdayText,
      'periods': instance.periods,
    };
