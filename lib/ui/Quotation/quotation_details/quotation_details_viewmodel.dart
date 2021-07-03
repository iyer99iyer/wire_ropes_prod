import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/app/app.router.dart';

class QuotationDetailsViewModel extends FormViewModel{

  final _navigationService = locator<NavigationService>();

  Future init(TextEditingController subjectController, TextEditingController bodyController, TextEditingController termsController) async{

  }
  void navigateToQuotationDetails(){
    _navigationService.navigateTo(Routes.quotationDetailsView);
  }

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus

  }

}