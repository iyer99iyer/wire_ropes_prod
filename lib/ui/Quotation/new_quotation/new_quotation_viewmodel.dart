import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/model/final_wire/final_wire.dart';
import 'package:wire_ropes/services/manage_final_wire_service.dart';
import 'package:wire_ropes/ui/Quotation/edit_ropes/edit_ropes_view.dart';

class NewQuotationViewModel extends BaseViewModel{

  final _navigationService = locator<NavigationService>();
  final _manageFinalWireService = locator<ManageFinalWireService>();

  FinalWire? _wireData;
  late String _orderID;

  String? _dropdownValue;
  List<String> _dropdownValueList = [];
  List<String> _dropdownItemList = [];

  Future init(FinalWire? wireData) async{
    _wireData = wireData;
    getDropdownItemList();
  }

  List<String> get dropdownValueList => _dropdownValueList;
  List<String> get dropdownItemList => _dropdownItemList;
  String? get dropdownValue => _dropdownValue;


  getDropdownItemList(){
    _dropdownItemList = ["12/07/2021 7:31PM","10/07/2021 8:40PM","2021-07-15 23:53:12.838524"];
    _dropdownItemList.add("Generate New OrderID");
    _dropdownItemList = _dropdownItemList.reversed.toList();
    // print(_dropdownItemList.reversed);
    _dropdownValueList = _dropdownItemList;
    notifyListeners();
  }

  updateDropdown(_value){
    _dropdownValue = _value;
    notifyListeners();
  }

  String generateNewOrderID(){
    var now = new DateTime.now();
    return now.toString();
  }


  navigateToEditRopes()async{
    if (_dropdownValue == "Generate New OrderID" || _dropdownValue == null)
      _orderID = generateNewOrderID();
    else
      _orderID = _dropdownValue!;

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