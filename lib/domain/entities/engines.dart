import 'package:extraedge_assignment/domain/entities/isp.dart';
import 'package:extraedge_assignment/domain/entities/thurst.dart';
import 'package:json_annotation/json_annotation.dart';
part 'engines.g.dart';

@JsonSerializable()
class Engines {
  final Isp? isp;
  final Thrust? thrustSeaLevel;
  final Thrust? thrustVacuum;
  final int? number;
  final String? type;
  final String? version;
  final String? layout;
  final int? engineLossMax;
  final String? propellant1;
  final String? propellant2;
  final double? thrustToWeight;

  Engines({
    this.isp,
    this.thrustSeaLevel,
    this.thrustVacuum,
    this.number,
    this.type,
    this.version,
    this.layout,
    this.engineLossMax,
    this.propellant1,
    this.propellant2,
    this.thrustToWeight,
  });
  factory Engines.fromJson(Map<String, dynamic> json) =>
      _$EnginesFromJson(json);
  Map<String, dynamic> toJson() => _$EnginesToJson(this);
}
