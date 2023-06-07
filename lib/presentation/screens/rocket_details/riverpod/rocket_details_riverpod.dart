import 'package:dio/dio.dart';
import 'package:extraedge_assignment/core/di/injector.dart';
import 'package:extraedge_assignment/domain/entities/temperature.dart';
import 'package:extraedge_assignment/domain/usecase/space_rocket_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RocketDetailsAppProviders {
  static final dioProvider = Provider<Dio>((ref) => Dio());

  static final apiServiceProvider = Provider<RocketUseCase>((ref) {
    return Injector.resolve<RocketUseCase>();
  });

  static final itemListProvider =
      FutureProvider.family<Temperatures, String>((ref, id) async {
    Temperatures data = Temperatures();
    final apiService = ref.read(apiServiceProvider);
    final response = await apiService.getRocketsDetails(id: id);
    response.fold((l) => l, (r) => data = r);
    return data;
  });
}
