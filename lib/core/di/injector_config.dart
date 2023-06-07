import 'package:extraedge_assignment/data/datasource/rocket_datasource.dart';
import 'package:extraedge_assignment/data/repository/space_rocket_repository_impl.dart';
import 'package:extraedge_assignment/domain/repository/space_rocket_repository.dart';
import 'package:extraedge_assignment/domain/usecase/space_rocket_usecase.dart';
import 'package:kiwi/kiwi.dart';
part 'injector_config.g.dart';

abstract class InjectorConfig {
  static KiwiContainer? container;

  static setup() async {
    final injector = _$InjectorConfig();
    await injector._configure();
  }

  static final resolve = container!.resolve;

  _configure() async {
    _configureUseCases();
    _configureRepositories();
    _configureRemoteDatasource();
  }

  // ============ Register RemoteDatasource ====================

  @Register.factory(RocketDataSource)
  void _configureRemoteDatasource();

  // ============ Register Repositories ====================

  @Register.factory(SpaceRocketRepositories, from: RocketRepositoryImpl)
  void _configureRepositories();

  // ============ Register Usecases ====================
  @Register.factory(RocketUseCase)
  void _configureUseCases();
}
