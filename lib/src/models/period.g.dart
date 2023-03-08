// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Period _$PeriodFromJson(Map json) => Period(
      close: json['close'] == null
          ? null
          : Close.fromJson(Map<String, dynamic>.from(json['close'] as Map)),
      open: json['open'] == null
          ? null
          : Open.fromJson(Map<String, dynamic>.from(json['open'] as Map)),
    );

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
      'close': instance.close?.toJson(),
      'open': instance.open?.toJson(),
    };
