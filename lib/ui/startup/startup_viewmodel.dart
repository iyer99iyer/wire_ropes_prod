import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/app/app.router.dart';
import 'package:wire_ropes/services/database_service.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _databaseService = locator<DatabaseService>();

  Future initialise() async {
    await _databaseService.initialize();
    _navigationService.popRepeated(1);
    await _navigationService.navigateTo(Routes.homePageView);
  }
}