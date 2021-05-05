import 'package:sqflite_migration_service/sqflite_migration_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/services/database_service.dart';
import 'package:wire_ropes/services/process_excel_excel.dart';
import 'package:wire_ropes/ui/add_rates_excel/add_rates_excel_view.dart';
import 'package:wire_ropes/ui/common_page/common_page_view.dart';
import 'package:wire_ropes/ui/home_page/home_page_view.dart';
import 'package:wire_ropes/ui/startup/startup_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: StartupView,initial: true),
  MaterialRoute(page: HomePageView),
  MaterialRoute(page: CommonPageView),
  MaterialRoute(page: AddRatesExcelView),
],
dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DatabaseService),
  LazySingleton(classType: DatabaseMigrationService),
  LazySingleton(classType: ProcessExcelService)
]
)
class AppSetup {}


// @StackedApp(
//     routes: [
//       MaterialRoute(page: StartupView, initial: true),
//       MaterialRoute(page: PhoneBookView,),
//       MaterialRoute(page: AddContactView),
//     ],
//     dependencies: [
//       LazySingleton(classType: NavigationService),
//       LazySingleton(classType: DatabaseService),
//       LazySingleton(classType: DatabaseMigrationService),
//     ]
// )