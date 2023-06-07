import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:extraedge_assignment/core/network/api_request.dart';
import 'package:extraedge_assignment/domain/entities/response_entity.dart';
import 'package:extraedge_assignment/domain/entities/temperature.dart';

class RocketDataSource {
  final client = ApiRequest(Dio(BaseOptions(contentType: "application/json")));
  Future<Either<ResponseEntity, List<Temperatures>>> getRockets() async {
    try {
      final response = await client.getRockets();
      return Right(response);
    } catch (e) {
      return Left(ResponseEntity(e: e));
    }
  }

  Future<Either<ResponseEntity, Temperatures>> getRocketsDetails(
      {required String id}) async {
    try {
      final response = await client.getRocketDetails(id);
      return Right(response);
    } catch (e) {
      return Left(ResponseEntity(e: e));
    }
  }
}
