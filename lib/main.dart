import 'package:extraedge_assignment/core/di/injector_config.dart';
import 'package:extraedge_assignment/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await InjectorConfig.setup();
  runApp(const ProviderScope(child: MyApp()));
}
