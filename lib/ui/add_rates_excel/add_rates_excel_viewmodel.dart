import 'package:file_picker/file_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/model/excel_data/excel_data.dart';
import 'package:wire_ropes/services/insert_data_service.dart';
import 'package:wire_ropes/services/process_excel_data.dart';

class AddRatesExcelViewModel extends BaseViewModel{

  final _processExcelService = locator<ProcessExcelService>();
  final _navigationService = locator<NavigationService>();
  final _insertDataService = locator<InsertDataService>();

  bool _processAndShowDataProcessing = false;

  String? _fileName;
  String? _filePath;

  ExcelData? _tableDataFromExcel;

  String? get fileName => _fileName;

  ExcelData? get tableDataFromExcel => _tableDataFromExcel;

  bool get processAndShowDataProcessing => _processAndShowDataProcessing;

  void onFileSelectButtonTapped() async{
    print("Select File...");
    FilePickerResult result = (await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    ))!;
    if(result != null){
      print(result.paths.first);
      _fileName = "${result.names.first}";
      _filePath = "${result.paths.first}";
      notifyListeners();
    }
  }

  void onProcessShowButtonTapped() async{
    // await _processExcelService.readExcelData(_filePath!);

    // making true
    _processAndShowDataProcessing = true;
    notifyListeners();

    // TODO: What happens when onProcessShowButton is tapped

    List<ExcelData> excelDataList = await _processExcelService.readAssetExcelData();
    // excelDataList.forEach((element) {print(element.toString());});
    await _insertDataService.insertDataList(excelDataList);

    //  _tableDataFromExcel = await _processExcelService.readAssetExcelData();
    //  print("${_tableDataFromExcel!.wireTypeTitle} ${_tableDataFromExcel!.titleList}");
    //  notifyListeners();

    // making false
    _processAndShowDataProcessing = false;
    notifyListeners();

  }
  void onImportButtonTapped(){
    _insertDataService.showDataList();
  }

  void navigateBack(){
    _navigationService.back();
  }

  void toggleBool(bool boolValue){
    boolValue = !boolValue;

  }

}