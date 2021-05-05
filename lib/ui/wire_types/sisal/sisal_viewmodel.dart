import 'package:stacked/stacked.dart';

class SisalViewModel extends BaseViewModel{
  void initialise() {
    _selectedDiameter = _diameterOptionList[0];
  }

  // Core & Construction

  // variables
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
}