// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Temperatures _$TemperaturesFromJson(Map<String, dynamic> json) => Temperatures(
      height: json['height'] == null
          ? null
          : Diameter.fromJson(json['height'] as Map<String, dynamic>),
      diameter: json['diameter'] == null
          ? null
          : Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
      mass: json['mass'] == null
          ? null
          : Mass.fromJson(json['mass'] as Map<String, dynamic>),
      firstStage: json['firstStage'] == null
          ? null
          : FirstStage.fromJson(json['firstStage'] as Map<String, dynamic>),
      secondStage: json['secondStage'] == null
          ? null
          : SecondStage.fromJson(json['secondStage'] as Map<String, dynamic>),
      engines: json['engines'] == null
          ? null
          : Engines.fromJson(json['engines'] as Map<String, dynamic>),
      landingLegs: json['landingLegs'] == null
          ? null
          : LandingLegs.fromJson(json['landingLegs'] as Map<String, dynamic>),
      payloadWeights: (json['payloadWeights'] as List<dynamic>?)
          ?.map((e) => PayloadWeight.fromJson(e as Map<String, dynamic>))
          .toList(),
      flickr_images: (json['flickr_images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      active: json['active'] as bool?,
      stages: json['stages'] as int?,
      boosters: json['boosters'] as int?,
      costPerLaunch: json['costPerLaunch'] as int?,
      successRatePct: json['successRatePct'] as int?,
      firstFlight: json['firstFlight'] == null
          ? null
          : DateTime.parse(json['firstFlight'] as String),
      country: json['country'] as String?,
      company: json['company'] as String?,
      wikipedia: json['wikipedia'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TemperaturesToJson(Temperatures instance) =>
    <String, dynamic>{
      'height': instance.height,
      'diameter': instance.diameter,
      'mass': instance.mass,
      'firstStage': instance.firstStage,
      'secondStage': instance.secondStage,
      'engines': instance.engines,
      'landingLegs': instance.landingLegs,
      'payloadWeights': instance.payloadWeights,
      'flickr_images': instance.flickr_images,
      'name': instance.name,
      'type': instance.type,
      'active': instance.active,
      'stages': instance.stages,
      'boosters': instance.boosters,
      'costPerLaunch': instance.costPerLaunch,
      'successRatePct': instance.successRatePct,
      'firstFlight': instance.firstFlight?.toIso8601String(),
      'country': instance.country,
      'company': instance.company,
      'wikipedia': instance.wikipedia,
      'description': instance.description,
      'id': instance.id,
    };
