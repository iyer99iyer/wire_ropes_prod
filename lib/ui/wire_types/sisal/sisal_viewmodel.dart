import 'package:stacked/stacked.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/services/get_diameter.dart';

class SisalViewModel extends BaseViewModel{

  final GetDiameter _getDiameter = locator<GetDiameter>();

  void initialise()async {
    _selectedDiameter = _diameterOptionList[0];
    await updateDiameterOptionList();
  }

  String _type = "sisal";
  // Core & Construction

  // variables
  String _core = "fc";
  String _construction = "8X19";
  List<String> _coreConstructionOptionList = ["Fiber Core 8X19"];
  int _selectedCoreConstructionIndex = 0;

  // getters
  List<String> get coreConstructionOptionList => _coreConstructionOptionList;
  int get selectedCoreConstructionIndex => _selectedCoreConstructionIndex;
  String get coreConstructionTitle => "Core & Construction";
  String get coreConstructionStringValue => _coreConstructionOptionList[_selectedCoreConstructionIndex];

  // functions
  void updateCoreConstructionSelectedIndex(int index) {
    _selectedCoreConstructionIndex = index;
    notifyListeners();
  }





  // Diameter

  // variable
  List<String> _diameterOptionList = ["7 mm", "8 mm","9 mm"];
  late String _selectedDiameter;

  // getters
  List<String> get diameterOptionList => _diameterOptionList;
  String get selectedDiameter => _selectedDiameter;
  String get diameterStringValue => _selectedDiameter;

  // functions
  void updateSelectedDiameter(String diameter) {
    _selectedDiameter = diameter;
    notifyListeners();
  }
  updateDiameterOptionList()async{
    _diameterOptionList = await _getDiameter.getDiameterSisal(_type, _core, _construction);
    _selectedDiameter = _diameterOptionList[0];
    notifyListeners();
  }
}