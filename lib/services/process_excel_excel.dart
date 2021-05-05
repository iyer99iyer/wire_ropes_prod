import 'dart:io';

import 'package:excel/excel.dart';
import 'package:flutter/services.dart';
import 'package:wire_ropes/model/excel_data/excel_data.dart';

class ProcessExcelService {
  late String _ropeTypeTitle;

  Future<ExcelData> readAssetExcelData() async {
    ByteData data = await rootBundle.load("assets/excel/rates.xlsx");
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);

    _ropeTypeTitle = _getWireTypeTitle(excel);

    Map<List<String>,List<int>> mapOfList = _readData(excel);

    ExcelData excelData = ExcelData(
        wireTypeTitle: _ropeTypeTitle,
        titleList:mapOfList.keys.first,
        totalList: mapOfList[mapOfList.keys.first]!
    );

    return excelData;
  }

  Future readExcelData(String path) async {
    var file = path;
    var bytes = File(file).readAsBytesSync();
    var excel = Excel.decodeBytes(bytes);

    // Map<String,int> total = _readData(excel);

    // return total;
  }

  // Read Excel Data

  // returns all the columns containing data given List<Data> (means the 3rd Row)
  List<int> getMMColumnNumber(List<Data?> data) {
    List<int> columnNumber = [];

    for (int i = 0; i < data.length; i++) {
      if (data[i] != null && data[i]!.value.toString().toLowerCase() == "mm") {
        columnNumber.add(data[i]!.colIndex);
      }
    }

    return columnNumber;
  }

  // returns the total rows for all columns containing data given the sheet and columnNumbers where data is present
  List<int> getNumberOfItemsForTitle(Sheet sheet, List<int> columnNumbers) {
    List<int> maxRowsForTitleList = [];

    for (int col in columnNumbers) {
      int maxRowsForTitle = 0;
      for (int i = 3; i < sheet.maxRows; i++) {
        if (sheet.rows[i][col] != null) {
          // print(sheet.rows[i][col]);
          maxRowsForTitle++;
        } else {
          break;
        }
      }
      maxRowsForTitleList.add(maxRowsForTitle);
    }
    return maxRowsForTitleList;
  }

  String _getWireTypeTitle(Excel excel){

    Sheet sheet1 = excel.tables["Sheet1"]!;
    List<Data?> _ropeTypeRow = sheet1.rows[0];

    // setting value of wire type
    try {
      _ropeTypeTitle = _ropeTypeRow[0]!.value;
    } catch (e) {
      _ropeTypeTitle = "null";
    }

    return _ropeTypeTitle;

  }

  Map<List<String>, List<int>> _readData(Excel excel) {
    Sheet sheet1 = excel.tables["Sheet1"]!;

    // print(sheet1.rows[0][0]);

    // List<Data?> _ropeTypeRow = sheet1.rows[0];
    List<Data?> _ropeTitleRow = sheet1.rows[1];
    List<Data?> _mmAndRateRow = sheet1.rows[2];

    List<String> _titleList = [];
    List<int> _columnNumbers = [];
    List<String> _mm = [];
    List<String> _rate = [];

    Map<List<String>, List<int>> mapOfTitleAndNumberOfRows = {};
    List<int> _maxRowsForTitleList = [];



    // Making Title List
    for (int i = 0; i < _ropeTitleRow.length; i = i + 3) {
      if (_ropeTitleRow[i] != null) {
        _titleList.add(
            "${_ropeTitleRow[i]!.value} ${_ropeTitleRow[i + 1]!.value}");
      }
    }

    // Getting number of wires for particular title

    // getting column numbers where the data is present
    _columnNumbers = getMMColumnNumber(_mmAndRateRow);

    // getting the total number of rows for the given column numbers containing data
    _maxRowsForTitleList = getNumberOfItemsForTitle(sheet1, _columnNumbers);

    mapOfTitleAndNumberOfRows[_titleList] = _maxRowsForTitleList;

    print(mapOfTitleAndNumberOfRows);

    return mapOfTitleAndNumberOfRows;

    // for (var table in excel.tables.keys) {
    //   print(table); //sheet Name
    //   print(excel.tables[table]!.maxCols);
    //   print(excel.tables[table]!.maxRows);
    //   for (var row in excel.tables[table]!.rows) {
    //     print("$row");
    //   }
    // }
  }
}
