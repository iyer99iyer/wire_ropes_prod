import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/model/ms/ms.dart';
import 'package:wire_ropes/model/sisal/sisal.dart';
import 'package:wire_ropes/model/sling/sling.dart';
import 'package:wire_ropes/model/ss/ss.dart';
import 'package:wire_ropes/ui/wire_types/ms/ms_view.dart';
import 'package:wire_ropes/ui/wire_types/sisal/sisal_view.dart';
import 'package:wire_ropes/ui/wire_types/sling/sling_view.dart';
import 'package:wire_ropes/ui/wire_types/ss/ss_view.dart';

class CommonPageViewModel extends BaseViewModel {

  final List<String> listWire = ["MS", "SS", "Sisal", "Slings"];

  late int _selectedIndex;

  int? get selectedIndex => _selectedIndex;

  void setWidgetsForSelectedWireType(String name){
    for(int i =0 ; i<listWire.length;i++) {
      if (name == listWire[i])
        _selectedIndex = i;
    }

  }

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void getMSData(MS data) {
    print(data);
  }

  void getSSData(SS data) {
    print(data);
  }

  void getSisalData(Sisal data){
    print(data);
  }
  void getSlingsData(Sling data){
    print(data);
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
