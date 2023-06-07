import 'package:dartz/dartz.dart';
import 'package:extraedge_assignment/core/di/injector.dart';
import 'package:extraedge_assignment/domain/entities/response_entity.dart';
import 'package:extraedge_assignment/domain/entities/temperature.dart';
import 'package:extraedge_assignment/domain/usecase/space_rocket_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

class RetryNotifier extends StateNotifier<int> {
  RetryNotifier() : super(0);

  void increment() {
    state = state + 1;
  }

  void reset() {
    state = 0;
  }
}

class AppProviders {
  static final dioProvider = Provider<Dio>((ref) => Dio());

  static final apiServiceProvider = Provider<RocketUseCase>((ref) {
    return Injector.resolve<RocketUseCase>();
  });

  static final retryNotifierProvider =
      StateNotifierProvider<RetryNotifier, int>((ref) => RetryNotifier());

  static final itemListProvider =
      FutureProvider.autoDispose<List<Temperatures>>((ref) async {
    final apiService = ref.read(apiServiceProvider);
    final retryCount = ref.watch(retryNotifierProvider);

    try {
      List<Temperatures> list = [];
      final Either<ResponseEntity, List<Temperatures>> itemList =
          await apiService.getRockets();

      ref.read(retryNotifierProvider.notifier).reset();
      itemList.fold((l) => l, (r) => list = r);
      return list;
    } catch (e) {
      if (retryCount < 3) {
        ref.read(retryNotifierProvider.notifier).increment();
      }
      throw Exception('Failed to fetch items');
    }
  });
}
