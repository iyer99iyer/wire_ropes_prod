import 'package:sqflite/sqflite.dart';
import 'package:sqflite_migration_service/sqflite_migration_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:wire_ropes/app/app.locator.dart';

const DB_name = 'wireRopes.db';

@LazySingleton()
class DatabaseService {
  final _migrationService = locator<DatabaseMigrationService>();

  late Database _database;

  Future initialize() async {
    _database = await openDatabase(DB_name, version: 1);

    await _migrationService.runMigration(
      _database,
      migrationFiles: ['1_create_schema.sql'],
      verbose: true,
    );
  }
}