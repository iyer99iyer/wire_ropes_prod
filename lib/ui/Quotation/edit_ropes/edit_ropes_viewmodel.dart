import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/app/app.router.dart';
import 'package:wire_ropes/model/final_wire/final_wire.dart';
import 'package:wire_ropes/services/manage_final_wire_service.dart';
import 'package:wire_ropes/ui/common_page/common_page_view.dart';

class EditRopesViewModel extends BaseViewModel{

  final priceFormat = NumberFormat("#,##,##0.00", "en_IN");

  final _navigationService = locator<NavigationService>();
  final _manageFinalWireService = locator<ManageFinalWireService>();

  List<FinalWire> _finalWires = [];
  double _rate = 0.0;
  late String _orderID;

  Future init(String orderID) async{
    _orderID = orderID;
    _finalWires = await _manageFinalWireService.getFinalWiresForOrderID(orderID);
    notifyListeners();
    print(_finalWires);

  }

  List<FinalWire> get finalWires => _finalWires;

  // String quantity(int totalMeters) => totalMeters.toString();
  // String discount(double discount) => discount.toString();
  String rate(double originalPrice, double discount) => priceFormat.format(originalPrice * (100-discount)/100);


  // getCalculatedPrice()

  // add code to bottom sheet to add the code where orderID is present.
  void navigateToAddWire(){
    _navigationService.navigateToView(CommonPageView(pageName: "MS",orderID: _orderID,));
  }

  void navigateToEditCompany(){
    _navigationService.navigateTo(Routes.editCompanyView);
  }
}