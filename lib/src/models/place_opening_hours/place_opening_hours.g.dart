// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_opening_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceOpeningHours _$PlaceOpeningHoursFromJson(Map<String, dynamic> json) =>
    PlaceOpeningHours(
      openNow: json['open_now'] as bool?,
      weekdayText: (json['weekday_text'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      periods: (json['periods'] as List<dynamic>?)
              ?.map((e) =>
                  PlaceOpeningHoursPeriod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PlaceOpeningHoursToJson(PlaceOpeningHours instance) =>
    <String, dynamic>{
      'open_now': instance.openNow,
      'weekday_text': instance.weekdayText,
      'periods': instance.periods,
    };
