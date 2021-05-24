import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/model/excel_data/excel_data.dart';
import 'package:wire_ropes/model/view_count_excel_data/view_count_excel_data.dart';
import 'package:wire_ropes/services/insert_data_service.dart';
import 'package:wire_ropes/services/process_excel_data.dart';

class AddRatesExcelViewModel extends BaseViewModel {
  final _processExcelService = locator<ProcessExcelService>();
  final _navigationService = locator<NavigationService>();
  final _insertDataService = locator<InsertDataService>();

  bool loading = false;
  bool _importButton = false;

  List<ViewCountExcelData>? _tableData;
  List<String> _columns = ["Type", "Core", "Construction", "Count"];

  bool _processAndShowDataProcessing = false;
  bool _importProcessing = false;

  String? _fileName;
  String? _filePath;

  late List<ExcelData> excelDataList;

  String? get fileName => _fileName;

  List<ViewCountExcelData>? get tableData => _tableData;
  List<DataColumn> get getDataColumn => _columns.map((String column) => DataColumn(label: Text(column))).toList();
  List<DataRow> get getDataRow => _tableData!.map((tableDataElement) {

    final cells = [tableDataElement.type,tableDataElement.core,tableDataElement.construction,tableDataElement.count];

    return DataRow(cells: getCells(cells));
  }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells.map((data) => DataCell(Text('${data.toString().toUpperCase()}'))).toList();

  bool get importButton => _importButton;

  bool get processAndShowDataProcessing => _processAndShowDataProcessing;

  bool get importProcessing => _importProcessing;

  // importing the file from phone storage
  void onFileSelectButtonTapped() async {
    print("Select File...");
    FilePickerResult result = (await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx'],
    ))!;
    if (result != null) {
      print(result.paths.first);
      _fileName = "${result.names.first}";
      _filePath = "${result.paths.first}";
      notifyListeners();
    }
  }

  void onProcessShowButtonTapped() async {
    // await _processExcelService.readExcelData(_filePath!);

    // making true
    _processAndShowDataProcessing = true;
    notifyListeners();

    // await _insertDataService.showDataList();
    excelDataList = await _processExcelService.readAssetExcelData();
    _tableData = await _insertDataService.addToTempDBAndShowData(excelDataList);
    _processAndShowDataProcessing = false;
    _importButton = true;
    notifyListeners();
  }

  void onImportButtonTapped() async {
    _importProcessing = true;
    notifyListeners();

    // excelDataList = await _processExcelService.readAssetExcelData();
    // excelDataList.forEach((element) {print(element.toString());});
    await _insertDataService.insertDataList(excelDataList);

    //  _tableDataFromExcel = await _processExcelService.readAssetExcelData();
    //  print("${_tableDataFromExcel!.wireTypeTitle} ${_tableDataFromExcel!.titleList}");
    //  notifyListeners();

    // making false

    _importProcessing = false;
    notifyListeners();
  }

  void navigateBack() {
    _navigationService.back();
  }

  void toggleBool(bool boolValue) {
    boolValue = !boolValue;
  }
}
