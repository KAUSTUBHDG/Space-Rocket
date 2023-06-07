import 'package:json_annotation/json_annotation.dart';
part 'payload_weight.g.dart';

@JsonSerializable()
class PayloadWeight {
  final String? id;
  final String? name;
  final int? kg;
  final int? lb;

  PayloadWeight({
    this.id,
    this.name,
    this.kg,
    this.lb,
  });
  factory PayloadWeight.fromJson(Map<String, dynamic> json) =>
      _$PayloadWeightFromJson(json);
  Map<String, dynamic> toJson() => _$PayloadWeightToJson(this);
}
