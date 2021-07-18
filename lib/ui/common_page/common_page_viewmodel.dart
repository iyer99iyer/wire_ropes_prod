import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/app/app.router.dart';
import 'package:wire_ropes/enums/bottom_sheet_type.dart';
import 'package:wire_ropes/model/bottom_sheet_custom_data/bottom_sheet_custom_data.dart';
import 'package:wire_ropes/model/final_wire/final_wire.dart';
import 'package:wire_ropes/model/ms/ms.dart';
import 'package:wire_ropes/model/ropes_rate/ropes_rate.dart';
import 'package:wire_ropes/model/sisal/sisal.dart';
import 'package:wire_ropes/model/sling/sling.dart';
import 'package:wire_ropes/model/ss/ss.dart';
import 'package:wire_ropes/services/database_service.dart';
import 'package:wire_ropes/services/get_price.dart';
import 'package:wire_ropes/ui/Quotation/edit_ropes/edit_ropes_view.dart';
import 'package:wire_ropes/ui/Quotation/new_quotation/new_quotation_view.dart';
import 'package:wire_ropes/ui/wire_types/ms/ms_view.dart';
import 'package:wire_ropes/ui/wire_types/sisal/sisal_view.dart';
import 'package:wire_ropes/ui/wire_types/sling/sling_view.dart';
import 'package:wire_ropes/ui/wire_types/ss/ss_view.dart';

class CommonPageViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _databaseService = locator<DatabaseService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _getPrice = locator<GetPrice>();

  String? _orderID;

  late ScrollController _controller = ScrollController(initialScrollOffset: -24);

  ScrollController get typeController => _controller;


  final List<String> listWire = ["MS", "SS", "Sisal", "Slings"];

  late int _selectedIndex;

  int? get selectedIndex => _selectedIndex;

  Future init(String pageName, String? orderID) async{
    setWidgetsForSelectedWireType(pageName);
    _orderID = orderID;
  }

  void setWidgetsForSelectedWireType(String name) {
    for (int i = 0; i < listWire.length; i++) {
      if (name == listWire[i]) {
        _selectedIndex = i;
        _controller = ScrollController(initialScrollOffset: (i*24));
      }
    }
  }

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    _controller.jumpTo(index*24);
    notifyListeners();
  }

  getMSData(MS data) async {
    print(data);

    String coreValue = "";

    if (data.core == "Steel Core") coreValue = "sc";
    if (data.core == "Fiber Core") coreValue = "fc";

    RopesRate _ropesRate  = await _getPrice.getPriceMS(
        core: coreValue,
        construction: data.construction,
        diameter: data.diameter);

    double price = _ropesRate.rate;
    int ropeId = _ropesRate.ropeId;

    print(price);

    var sheetResponse = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.rateBottomSheet,
      title: 'Metal Steel Rope',
      description:
          '${data.core} | ${data.construction} | ${data.diameter} \n ${data.coating}',
      mainButtonTitle: 'Awesome!',
      secondaryButtonTitle: 'This is cool',
      data: BottomSheetCustomData(rate: price, coating: data.coating, ropeId: ropeId),
      isScrollControlled: true,
      barrierDismissible: false,
    );


    if(sheetResponse!.confirmed && _orderID == null){
      // _navigationService.popRepeated();
      _navigationService.navigateToView(NewQuotationView(wireData: sheetResponse.data,));
    }else if(sheetResponse.confirmed && _orderID != null){
      FinalWire _finalWire = sheetResponse.data;
      _finalWire = _finalWire.copyWith(orderID: _orderID!);
      print("common_page_vm : $_finalWire");
      await _databaseService.insertIntoFinalWire(_finalWire);

      print("will add this to the orderID $_orderID");
      _navigationService.popRepeated(2);
      _navigationService.navigateToView(EditRopesView(orderID: _orderID!,));
    }else{
      print("no dialog to show!!");
    }
    // print('price: ${sheetResponse.data}');
  }

  void getSSData(SS data) {
    print(data);
  }

  void getSisalData(Sisal data) {
    print(data);
  }

  void getSlingsData(Sling data) async {
    print(data);

    String coreValue = "";

    if (data.core == "Steel Core") coreValue = "sc";
    if (data.core == "Fiber Core") coreValue = "fc";

    RopesRate _ropesRate  = await _getPrice.getPriceSlings(
        core: coreValue,
        construction: data.construction,
        diameter: data.diameter);

    double price = _ropesRate.rate;
    int ropeId = _ropesRate.ropeId;

    print(price);

    var sheetResponse = await _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.slingsRateBottomSheet,
      title: 'Metal Steel Rope',
      description:
          '${data.core} | ${data.construction} | ${data.diameter} \n ${data.coating}',
      mainButtonTitle: 'Awesome!',
      secondaryButtonTitle: 'This is cool',
      data: BottomSheetCustomData(rate: price, coating: data.coating, ropeId: ropeId),
      isScrollControlled: true,
      barrierDismissible: false,
      // enableDrag: false,
    );

    print('confirmationResponse confirmed: ${sheetResponse?.confirmed}');
  }

  Widget getWidgetsForSelectedWireType(int index) {
    switch (listWire[index]) {
      case "MS":
        return Container(
          height: 520,
          child: MSView(
            getData: getMSData,
          ),
        );
        break;
      case "SS":
        return Container(
          height: 520,
          child: SSView(
            getData: getSSData,
          ),
        );
        break;
      case "Sisal":
        return Container(
          height: 520,
          child: SisalView(
            getDate: getSisalData,
          ),
        );
        break;
      case "Slings":
        return Container(
          height: 520,
          child: SlingView(
            getDate: getSlingsData,
          ),
        );
        break;
      default:
        return Container(
          height: 520,
          width: double.infinity,
          color: Colors.black,
        );
    }
  }


  Future showConfirmationDialog() async {
    var response = await _dialogService.showConfirmationDialog(
      title: 'No OrderID found',
      description: 'Do you want to update Confirmation state in the UI?',
      confirmationTitle: 'Yes',
      dialogPlatform: DialogPlatform.Material,
      cancelTitle: 'No',
    );

    print(response?.confirmed);

    // notifyListeners();
  }
}
