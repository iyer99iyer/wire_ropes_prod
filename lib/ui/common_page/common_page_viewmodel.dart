import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/enums/bottom_sheet_type.dart';
import 'package:wire_ropes/model/bottom_sheet_custom_data/bottom_sheet_custom_data.dart';
import 'package:wire_ropes/model/ms/ms.dart';
import 'package:wire_ropes/model/ropes_rate/ropes_rate.dart';
import 'package:wire_ropes/model/sisal/sisal.dart';
import 'package:wire_ropes/model/sling/sling.dart';
import 'package:wire_ropes/model/ss/ss.dart';
import 'package:wire_ropes/services/get_price.dart';
import 'package:wire_ropes/ui/wire_types/ms/ms_view.dart';
import 'package:wire_ropes/ui/wire_types/sisal/sisal_view.dart';
import 'package:wire_ropes/ui/wire_types/sling/sling_view.dart';
import 'package:wire_ropes/ui/wire_types/ss/ss_view.dart';

class CommonPageViewModel extends BaseViewModel {
  final _bottomSheetService = locator<BottomSheetService>();
  final _getPrice = locator<GetPrice>();

  late ScrollController _controller = ScrollController(initialScrollOffset: -24);

  ScrollController get typeController => _controller;


  final List<String> listWire = ["MS", "SS", "Sisal", "Slings"];

  late int _selectedIndex;

  int? get selectedIndex => _selectedIndex;

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
      customData: BottomSheetCustomData(rate: price, coating: data.coating, ropeId: ropeId),
      isScrollControlled: true,
      barrierDismissible: false,
    );
    if(sheetResponse!.confirmed)
    print('price: ${sheetResponse.responseData}');
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
      customData: BottomSheetCustomData(rate: price, coating: data.coating, ropeId: ropeId),
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
}
