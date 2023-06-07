// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector_config.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$InjectorConfig extends InjectorConfig {
  @override
  void _configureRemoteDatasource() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory((c) => RocketDataSource());
  }

  @override
  void _configureRepositories() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory<SpaceRocketRepositories>(
        (c) => RocketRepositoryImpl(datasource: c<RocketDataSource>()));
  }

  @override
  void _configureUseCases() {
    final KiwiContainer container = KiwiContainer();
    container.registerFactory(
        (c) => RocketUseCase(repositories: c<SpaceRocketRepositories>()));
  }
}
