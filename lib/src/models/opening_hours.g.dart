// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpeningHours _$OpeningHoursFromJson(Map json) => OpeningHours(
      openNow: json['openNow'] as bool?,
      weekdayText: (json['weekdayText'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$OpeningHoursToJson(OpeningHours instance) =>
    <String, dynamic>{
      'openNow': instance.openNow,
      'weekdayText': instance.weekdayText,
      'periods': instance.periods?.map((e) => e.toJson()).toList(),
    };
