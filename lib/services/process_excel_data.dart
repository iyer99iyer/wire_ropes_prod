import 'dart:io';

import 'package:excel/excel.dart';
import 'package:flutter/services.dart';
import 'package:wire_ropes/model/excel_data/excel_data.dart';
import 'package:wire_ropes/model/processed_data_count/processed_data_count.dart';
import 'package:wire_ropes/ui/shared/contants.dart';

class ProcessExcelService {

  Future<List<ExcelData>> readAssetExcelData() async {
    ByteData data = await rootBundle.load("assets/excel/import.xlsx");
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);

    List<ExcelData> allExcelData = _readData(excel);

    return allExcelData;

    List<ProcessedDataCount> processedData = _processData(allExcelData);
  }

  Future<List<ExcelData>> readExcelData(String path) async {
    var file = path;
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);

    List<ExcelData> allExcelData = _readData(excel);

    return allExcelData;

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

  // TODO : do use tree to store data resultant List of data of different and write search algo for that
  List<ProcessedDataCount> _processData(List<ExcelData> allExcelData){

    List<ProcessedDataCount> processedData = [];

    int msSc6X19Count = 0;

    allExcelData.forEach(
            (element) {
              switch(element.type){
                case MS:
                  if(element.core == SHORTSTEELCORE){
                    if(element.construction == C6X19) msSc6X19Count++;
                    if(element.construction == C6X19) msSc6X19Count++;
                    if(element.construction == C6X19) msSc6X19Count++;
                    if(element.construction == C6X19) msSc6X19Count++;
                  }
              }
            });

    return processedData;

  }



}
