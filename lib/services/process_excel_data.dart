import 'dart:io';

import 'package:excel/excel.dart';
import 'package:flutter/services.dart';
import 'package:wire_ropes/model/excel_data/excel_data.dart';

class ProcessExcelService {

  Future<List<ExcelData>> readAssetExcelData() async {
    ByteData data = await rootBundle.load("assets/excel/import.xlsx");
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);

    List<ExcelData> allExcelData = _readData(excel);

    return allExcelData;
  }

  Future readExcelData(String path) async {
    var file = path;
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);

    List<ExcelData> allExcelData = _readData(excel);

  }

  // TODO: Read Excel Data


  List<ExcelData> _readData(Excel excel) {
    List<ExcelData> _excelDataList = [];

    Sheet sheet1 = excel.tables["Sheet1"]!;

    // print(sheet1.rows[0][0]);

    // List<Data?> _ropeTypeRow = sheet1.rows[0];
    List<List<Data?>> _2dArray = sheet1.rows;

    String type = "null";
    String core = "null";
    String construction = "null";
    String diameter = "null";
    double rate = 0.0;
    double secondMeterRate = 0.0;
    double doubleFerrule = 0.0;

    for (List<Data?> rowList in _2dArray) {

      if(rowList == _2dArray.first) continue;

      for (int i = 0; i < sheet1.maxCols; i++) {
        Data? data = rowList[i];


        if (data != null) {
          switch (i) {
            case 0:
              type = data.value.toString();
              break;
            case 1:
              core = data.value.toString();
              break;
            case 2:
              construction = data.value.toString();
              break;
            case 3:
              diameter = data.value.toString();
              break;
            case 4:
              print(data.value);
              rate = data.value.toString() != "null" ? double.parse(data.value.toString()) : 0.0;
              break;
            case 5:
              secondMeterRate = data.value.toString() != "null" ? double.parse(data.value.toString()) : 0.0;
              break;
            case 6:
              doubleFerrule = data.value.toString() != "null" ? double.parse(data.value.toString()) : 0.0;
              break;
            default:
              break;
          }
        }

      }
      if (type != "null" &&
          core != "null" &&
          construction != "null" &&
          diameter != "null" &&
          rate != 0.0) {
        _excelDataList.add(
          ExcelData(
            type: type,
            core: core,
            construction: construction,
            diameter: diameter,
            rate: rate,
            secondMeterRate: secondMeterRate,
            doubleFerrule: doubleFerrule,
          ),
        );
      }
    }

    return _excelDataList;
  }



}
