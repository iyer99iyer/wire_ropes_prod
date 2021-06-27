import 'package:stacked/stacked.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/services/get_diameter.dart';

class MSViewModel extends BaseViewModel {

  final GetDiameter _getDiameter = locator<GetDiameter>();

  void initialise() async{
    _constructionOptionList = _constructionOptionSteelCoreList;
    // _diameterOptionList = await _getDiameter.getDiameterMS(_type, coreStringValue, constructionStringValue);
    _selectedDiameter = _diameterOptionList[0];
    await updateDiameterOptionList();
  }

  // Core

  // variables
  String _type = "ms";

  List<String> _coreOptionListDB = ["sc","fc"];
  List<String> _coreOptionList = ["Steel Core", "Fiber Core"];
  int _selectedCoreIndex = 0;

  // getters
  List<String> get coreOptionList => _coreOptionList;
  int get selectedCoreIndex => _selectedCoreIndex;
  String get coreTitle => "Core";
  String get coreStringValue => _coreOptionList[_selectedCoreIndex];
  String get coreStringValueDB => _coreOptionListDB[_selectedCoreIndex];

  // functions
  void updateCoreSelectedIndex(int index) async{
    _selectedCoreIndex = index;
    updateConstructionList(_coreOptionList[index]);
    await updateDiameterOptionList();
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
  List<String> _constructionOptionFibreCoreList = ["6X19", "6X36", "8X19"];
  List<String> _constructionOptionSteelCoreList = ["6X19", "6X36", "18X7"];

  late List<String> _constructionOptionList;
  int _selectedConstructionIndex = 0;

  // getters
  List<String> get constructionOptionList => _constructionOptionList;
  int get selectedConstructionIndex => _selectedConstructionIndex;
  String get constructionTitle => "Construction";
  String get constructionStringValue => _constructionOptionList[_selectedConstructionIndex];

  // functions
  void updateConstructionSelectedIndex(int index) async{
    _selectedConstructionIndex = index;
    await updateDiameterOptionList();
    notifyListeners();
  }

  void updateConstructionList(String core) {
    _constructionOptionList = core == _coreOptionList[0]
        ? _constructionOptionSteelCoreList
        : _constructionOptionFibreCoreList;
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
    _diameterOptionList = await _getDiameter.getDiameterMS(_type, coreStringValueDB, constructionStringValue);
    _selectedDiameter = _diameterOptionList[0];
    notifyListeners();
  }

}
