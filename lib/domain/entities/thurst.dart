import 'package:json_annotation/json_annotation.dart';

part 'thurst.g.dart';

@JsonSerializable()
class Thrust {
  final int? kN;
  final int? lbf;

  Thrust({
    this.kN,
    this.lbf,
  });

  factory Thrust.fromJson(Map<String, dynamic> json) => _$ThrustFromJson(json);
  Map<String, dynamic> toJson() => _$ThrustToJson(this);
}
