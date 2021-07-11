import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/app/app.router.dart';
import 'package:wire_ropes/model/final_wire/final_wire.dart';
import 'package:wire_ropes/services/manage_final_wire_service.dart';
import 'package:wire_ropes/ui/Quotation/edit_ropes/edit_ropes_view.dart';

class NewQuotationViewModel extends BaseViewModel{

  final _navigationService = locator<NavigationService>();
  final _manageFinalWireService = locator<ManageFinalWireService>();

  FinalWire? _wireData;
  late String _orderID;

  String _dropdownValue = "Generate New OrderID";

  Future init(FinalWire? wireData) async{
    _wireData = wireData;
  }

  String generateNewOrderID(){
    var now = new DateTime.now();
    return now.toString();
  }

  navigateToEditRopes()async{
    if (_dropdownValue == "Generate New OrderID")
      _orderID = generateNewOrderID();
    else
      _orderID = _dropdownValue;

    if (_wireData != null) {
      _wireData = _wireData!.copyWith(orderID: _orderID);
    }else{
      _wireData = FinalWire(originalPrice: 0, discount: 0, wireTitle: "null", wireDetails: "null");
    }

    await _manageFinalWireService.insertIntoFinalWires(_wireData!);

    print(_wireData);

    _navigationService.navigateToView(EditRopesView(orderID: _orderID));
  }
}