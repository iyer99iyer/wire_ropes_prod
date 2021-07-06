import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/app/app.router.dart';

import 'package:wire_ropes/ui/Quotation/quotation_details/quotation_details_view.form.dart';

class QuotationDetailsViewModel extends FormViewModel{

  final _navigationService = locator<NavigationService>();

  Future init(TextEditingController subjectController, TextEditingController bodyController, TextEditingController termsController) async{
      subjectController.text = "Reg.:  Proforma Invoice for 6x19 SC / FMC 1770 UNG. Steel Wire Ropes";
      bodyController.text = "This is with reference to your order, BH/2020-21 Dt. 28.02.2021, we feel pleasure to forward our Proforma Invoice as Under: -";
      termsController.text = "We Sincerely hope that your good self will find the above to your entire satisfaction.  As per our payment terms send your 30 days PDC Cheque and Courier details as our office Address and Mail ID as under.";
      // notifyListeners();
  }

  void navigateToQuotationDetails(){
    _navigationService.navigateTo(Routes.quotationDetailsView);
  }



  @override
  void setFormStatus() {
    // TODO: implement setFormStatus

  }

}