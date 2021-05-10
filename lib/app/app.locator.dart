// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:sqflite_migration_service/sqflite_migration_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/database_service.dart';
import '../services/process_excel_data.dart';

final locator = StackedLocator.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DatabaseService());
  locator.registerLazySingleton(() => DatabaseMigrationService());
  locator.registerLazySingleton(() => ProcessExcelService());
}
