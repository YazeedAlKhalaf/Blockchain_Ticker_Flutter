import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:blockchain_ticker/src/app/app.dart';
import 'package:blockchain_ticker/src/app/generated/locator/locator.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Sets logging level
  Logger.level = Level.debug;

  // Register all the models and services before the app starts
  setupLocator();

  // Runs the app :)
  runApp(App());
}