import 'package:extraedge_assignment/domain/entities/payload.dart';
import 'package:extraedge_assignment/domain/entities/thurst.dart';
import 'package:json_annotation/json_annotation.dart';
part 'second_stage.g.dart';

@JsonSerializable()
class SecondStage {
  final Thrust? thrust;
  final Payloads? payloads;
  final bool? reusable;
  final int? engines;
  final double? fuelAmountTons;
  final int? burnTimeSec;

  SecondStage({
    this.thrust,
    this.payloads,
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
  });
  factory SecondStage.fromJson(Map<String, dynamic> json) =>
      _$SecondStageFromJson(json);
  Map<String, dynamic> toJson() => _$SecondStageToJson(this);
}
