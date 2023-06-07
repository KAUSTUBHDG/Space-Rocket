import 'package:dartz/dartz.dart';
import 'package:extraedge_assignment/domain/entities/response_entity.dart';
import 'package:extraedge_assignment/domain/entities/temperature.dart';
import 'package:extraedge_assignment/domain/repository/space_rocket_repository.dart';

class RocketUseCase {
  final SpaceRocketRepositories repositories;
  RocketUseCase({required this.repositories});

  Future<Either<ResponseEntity, List<Temperatures>>> getRockets() async {
    return await repositories.getRockets();
  }

  Future<Either<ResponseEntity, Temperatures>> getRocketsDetails(
      {required String id}) async {
    return await repositories.getRocketsDetails(id: id);
  }
}
