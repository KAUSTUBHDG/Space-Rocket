import 'package:dartz/dartz.dart';
import 'package:extraedge_assignment/data/datasource/rocket_datasource.dart';
import 'package:extraedge_assignment/domain/entities/response_entity.dart';
import 'package:extraedge_assignment/domain/entities/temperature.dart';
import 'package:extraedge_assignment/domain/repository/space_rocket_repository.dart';

class RocketRepositoryImpl extends SpaceRocketRepositories {
  final RocketDataSource datasource;
  RocketRepositoryImpl({required this.datasource});
  @override
  Future<Either<ResponseEntity,  List<Temperatures>>> getRockets() async {
    return await datasource.getRockets();
  }

  @override
  Future<Either<ResponseEntity, Temperatures>> getRocketsDetails(
      {required String id}) async {
    return await datasource.getRocketsDetails(id: id);
  }
}
