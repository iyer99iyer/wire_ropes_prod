import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/app/app.router.dart';

class EditRopesViewModel extends BaseViewModel{

  final _navigationService = locator<NavigationService>();

  Future init() async{

  }
  void navigateToEditCompany(){
    _navigationService.navigateTo(Routes.editCompanyView);
  }
}