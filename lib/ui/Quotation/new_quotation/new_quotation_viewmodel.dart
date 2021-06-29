import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/app/app.router.dart';

class NewQuotationViewModel extends BaseViewModel{

  final _navigationService = locator<NavigationService>();

  Future init() async{

  }
  void navigateToEditRopes(){
    _navigationService.navigateTo(Routes.editRopesView);
  }
}