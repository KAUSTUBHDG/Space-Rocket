import 'package:extraedge_assignment/domain/entities/diameter.dart';
import 'package:extraedge_assignment/domain/entities/engines.dart';
import 'package:extraedge_assignment/domain/entities/first_stage.dart';
import 'package:extraedge_assignment/domain/entities/landing_legs.dart';
import 'package:extraedge_assignment/domain/entities/mass.dart';
import 'package:extraedge_assignment/domain/entities/payload_weight.dart';
import 'package:extraedge_assignment/domain/entities/second_stage.dart';
import 'package:json_annotation/json_annotation.dart';
part 'temperature.g.dart';

@JsonSerializable()
class Temperatures {
  final Diameter? height;
  final Diameter? diameter;
  final Mass? mass;
  final FirstStage? firstStage;
  final SecondStage? secondStage;
  final Engines? engines;
  final LandingLegs? landingLegs;
  final List<PayloadWeight>? payloadWeights;
  final List<String>? flickr_images;
  final String? name;
  final String? type;
  final bool? active;
  final int? stages;
  final int? boosters;
  final int? costPerLaunch;
  final int? successRatePct;
  final DateTime? firstFlight;
  final String? country;
  final String? company;
  final String? wikipedia;
  final String? description;
  final String? id;

  Temperatures({
    this.height,
    this.diameter,
    this.mass,
    this.firstStage,
    this.secondStage,
    this.engines,
    this.landingLegs,
    this.payloadWeights,
    this.flickr_images,
    this.name,
    this.type,
    this.active,
    this.stages,
    this.boosters,
    this.costPerLaunch,
    this.successRatePct,
    this.firstFlight,
    this.country,
    this.company,
    this.wikipedia,
    this.description,
    this.id,
  });

  factory Temperatures.fromJson(Map<String, dynamic> json) =>
      _$TemperaturesFromJson(json);
  Map<String, dynamic> toJson() => _$TemperaturesToJson(this);
}
