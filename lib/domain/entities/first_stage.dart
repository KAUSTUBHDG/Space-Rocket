import 'package:extraedge_assignment/domain/entities/thurst.dart';
import 'package:json_annotation/json_annotation.dart';
part 'first_stage.g.dart';

@JsonSerializable()
class FirstStage {
  final Thrust? thrustSeaLevel;
  final Thrust? thrustVacuum;
  final bool? reusable;
  final int? engines;
  final double? fuelAmountTons;
  final int? burnTimeSec;

  FirstStage({
    this.thrustSeaLevel,
    this.thrustVacuum,
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
  });
  factory FirstStage.fromJson(Map<String, dynamic> json) =>
      _$FirstStageFromJson(json);
  Map<String, dynamic> toJson() => _$FirstStageToJson(this);
}
