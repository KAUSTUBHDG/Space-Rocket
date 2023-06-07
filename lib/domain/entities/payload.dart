import 'package:extraedge_assignment/domain/entities/composite_fairing.dart';
import 'package:json_annotation/json_annotation.dart';
part 'payload.g.dart';

@JsonSerializable()
class Payloads {
  final CompositeFairing? compositeFairing;
  final String? option1;

  Payloads({
    this.compositeFairing,
    this.option1,
  });
  factory Payloads.fromJson(Map<String, dynamic> json) =>
      _$PayloadsFromJson(json);
  Map<String, dynamic> toJson() => _$PayloadsToJson(this);
}
