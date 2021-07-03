import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/app/app.router.dart';

import 'edit_company_view.form.dart';

class EditCompanyViewModel extends FormViewModel{

  final _navigationService = locator<NavigationService>();

  Future init() async{

  }
  void navigateToQuotationDetails(){
    _navigationService.navigateTo(Routes.quotationDetailsView);
  }

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }




}