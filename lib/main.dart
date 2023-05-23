import 'package:farm_app/internal/app_components.dart';
import 'package:farm_app/internal/app_dependency.dart';
import 'package:flutter/material.dart';

import 'internal/app.dart';

Future<void> main() async {

  await AppComponents().init();

  runApp(
    AppDependency(
      app: App(),
    ),
  );
}
