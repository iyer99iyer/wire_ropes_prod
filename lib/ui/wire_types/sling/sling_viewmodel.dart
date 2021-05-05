import 'package:stacked/stacked.dart';

class SlingViewModel extends BaseViewModel{
  void initialise() {
    _selectedDiameter = _diameterOptionList[0];
  }

  // Core

  // variables
  List<String> _coreOptionList = ["Steel Core", "Fiber Core"];
  int _selectedCoreIndex = 0;

  // getters
  List<String> get coreOptionList => _coreOptionList;
  int get selectedCoreIndex => _selectedCoreIndex;
  String get coreTitle => "Core";
  String get coreStringValue => _coreOptionList[_selectedCoreIndex];

  // functions
  void updateCoreSelectedIndex(int index) {
    _selectedCoreIndex = index;
    notifyListeners();
  }

  // Coating

  // variables
  List<String> _coatingOptionList = ["un-Galvanised", "Galvanised"];
  int _selectedCoatingIndex = 0;

  // getters
  List<String> get coatingOptionList => _coatingOptionList;
  int get selectedCoatingIndex => _selectedCoatingIndex;
  String get coatingTitle => "Coating";
  String get coatingStringValue => _coatingOptionList[_selectedCoatingIndex];

  // functions
  void updateCoatingSelectedIndex(int index) {
    _selectedCoatingIndex = index;
    notifyListeners();
  }

  // Coating

  // variables
  List<String> _constructionOptionList = ["6X19", "6X36"];
  int _selectedConstructionIndex = 0;

  // getters
  List<String> get constructionOptionList => _constructionOptionList;
  int get selectedConstructionIndex => _selectedConstructionIndex;
  String get constructionTitle => "Construction";
  String get constructionStringValue => _constructionOptionList[_selectedConstructionIndex];

  // functions
  void updateConstructionSelectedIndex(int index) {
    _selectedConstructionIndex = index;
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