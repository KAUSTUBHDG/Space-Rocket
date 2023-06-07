import 'package:json_annotation/json_annotation.dart';
part 'isp.g.dart';

@JsonSerializable()
class Isp {
  final int? seaLevel;
  final int? vacuum;

  Isp({
    this.seaLevel,
    this.vacuum,
  });
  factory Isp.fromJson(Map<String, dynamic> json) => _$IspFromJson(json);
  Map<String, dynamic> toJson() => _$IspToJson(this);
}
