import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:showan_coffee/app/flavor.dart';
import 'package:showan_coffee/app/locator.dart';
import 'package:showan_coffee/app/runner.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  F.flavor = Flavor.staging;

  await setupLocator();

  runZonedGuarded(
    runnerApp,
    (error, stackTrace) => log(
      error.toString(),
      name: 'ERROR',
      stackTrace: stackTrace,
    ),
  );
}
