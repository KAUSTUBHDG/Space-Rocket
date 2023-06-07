import 'package:extraedge_assignment/domain/entities/diameter.dart';
import 'package:json_annotation/json_annotation.dart';
part 'composite_fairing.g.dart';

@JsonSerializable()
class CompositeFairing {
  final Diameter? height;
  final Diameter? diameter;

  CompositeFairing({
    this.height,
    this.diameter,
  });
  factory CompositeFairing.fromJson(Map<String, dynamic> json) =>
      _$CompositeFairingFromJson(json);
  Map<String, dynamic> toJson() => _$CompositeFairingToJson(this);
}
