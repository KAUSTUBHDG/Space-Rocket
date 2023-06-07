import 'package:dartz/dartz.dart';
import 'package:extraedge_assignment/domain/entities/response_entity.dart';
import 'package:extraedge_assignment/domain/entities/temperature.dart';

abstract class SpaceRocketRepositories {
  Future<Either<ResponseEntity,  List<Temperatures>>> getRockets();

  Future<Either<ResponseEntity, Temperatures>> getRocketsDetails(
      {required String id});
}
