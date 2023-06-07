// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseEntity _$ResponseEntityFromJson(Map<String, dynamic> json) =>
    ResponseEntity(
      error: json['error'] as String?,
      response: json['response'],
      status: json['status'] as String?,
      e: json['e'] as Object,
    );

Map<String, dynamic> _$ResponseEntityToJson(ResponseEntity instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'response': instance.response,
      'e': instance.e,
    };
