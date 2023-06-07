import 'package:json_annotation/json_annotation.dart';
part 'response_entity.g.dart';

@JsonSerializable()
class ResponseEntity {
  String? status;
  String? error;
  dynamic response;
  Object e;
  ResponseEntity({this.error, this.response, this.status, required this.e});
  factory ResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ResponseEntityFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseEntityToJson(this);
}
