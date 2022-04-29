// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Period _$PeriodFromJson(Map<String, dynamic> json) => Period(
      open: TimeAndDay.fromJson(json['open'] as Map<String, dynamic>),
      close: json['close'] == null
          ? null
          : TimeAndDay.fromJson(json['close'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
      'close': instance.close,
      'open': instance.open,
    };
