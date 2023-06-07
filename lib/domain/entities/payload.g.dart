// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payloads _$PayloadsFromJson(Map<String, dynamic> json) => Payloads(
      compositeFairing: json['compositeFairing'] == null
          ? null
          : CompositeFairing.fromJson(
              json['compositeFairing'] as Map<String, dynamic>),
      option1: json['option1'] as String?,
    );

Map<String, dynamic> _$PayloadsToJson(Payloads instance) => <String, dynamic>{
      'compositeFairing': instance.compositeFairing,
      'option1': instance.option1,
    };
