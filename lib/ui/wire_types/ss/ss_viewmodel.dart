import 'package:stacked/stacked.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/services/get_diameter.dart';

class SSViewModel extends BaseViewModel{

  final GetDiameter _getDiameter = locator<GetDiameter>();

  void initialise() async{
    _selectedDiameter = _diameterOptionList[0];
    await updateDiameterOptionList();
  }

  String _type = "ss";
  // Grade

  // variables
  List<String> _gradeOptionList = ["304", "316"];
  int _selectedGradeIndex = 0;

  // getters
  List<String> get gradeOptionList => _gradeOptionList;
  int get selectedGradeIndex => _selectedGradeIndex;
  String get gradeTitle => "Grade";
  String get gradeStringValue => _gradeOptionList[_selectedGradeIndex];

  // functions
  void updateGradeSelectedIndex(int index) {
    _selectedGradeIndex = index;
    notifyListeners();
  }

  // Construction

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
  updateDiameterOptionList()async{
    _diameterOptionList = await _getDiameter.getDiameterSS(_type, gradeStringValue, constructionStringValue);
    _selectedDiameter = _diameterOptionList[0];
    notifyListeners();
  }

}