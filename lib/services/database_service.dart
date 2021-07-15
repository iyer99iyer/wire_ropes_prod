import 'package:sqflite/sqflite.dart';
import 'package:sqflite_migration_service/sqflite_migration_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/model/excel_data/excel_data.dart';
import 'package:wire_ropes/model/final_wire/final_wire.dart';
import 'package:wire_ropes/model/ropes_rate/ropes_rate.dart';
import 'package:wire_ropes/model/selected_rope_type/selected_rope_type.dart';
import 'package:wire_ropes/model/slings_rate/slings_rate.dart';
import 'package:wire_ropes/model/view_count_excel_data/view_count_excel_data.dart';

const DB_name = 'wireRopes.db';

const selectedRopeTypeTable = "selected_rope_type";
const selectedRopeTypeId = "selectedRopeTypeId";
const type = "type";
const core = "core";
const construction = "construction";

const ropesRateTable = "ropes_rate";
const ropeId = "ropeId";
const diameter = "diameter";
const rate = "rate";

const slingsRateTable = "slings_rate";
const slingsId = "slingsId";
const secondMeterRate = "secondMeterRate";
const doubleFerrule = "doubleFerrule";

const excelDataTempTable = "excel_data_temp";

const finalWiresTable = "final_wires";
const serialNo = "serialNo";
const originalPrice = "originalPrice";
const discount = "discount";
const orderID = "orderID";
const totalMeters = "totalMeters";
const wireTitle = "wireTitle";
const wireDetails = "wireDetails";

final SelectedRopeType nullSelectedRopeType = SelectedRopeType(
    selectedRopeTypeId: 0, construction: "0X0", core: "null", type: "null");
final RopesRate nullRopesRate =
    RopesRate(ropeId: 0, diameter: "0mm", rate: 0.0, selectedRopeTypeId: 0);
final SlingsRate nullSlingsRate = SlingsRate(
    ropeId: 0, doubleFerrule: 0.0, secondMeterRate: 0.0, slingsId: 0);

@LazySingleton()
class DatabaseService {
  final _migrationService = locator<DatabaseMigrationService>();

  late Database _database;

  Future initialize() async {
    _database = await openDatabase(DB_name, version: 1);

    await _migrationService.runMigration(
      _database,
      migrationFiles: ['1_create_schema.sql'],
      verbose: true,
    );
  }

  // ************************************************* selectedRopeTypeTable *****************************************

  // get All the types from SelectedRopeTypeTable
  Future<List<SelectedRopeType>> getAllSelectedRopesType() async {
    try {
      List<Map<String, dynamic>> allSelectedRopesTypeResult =
          await _database.query(selectedRopeTypeTable);
      List<SelectedRopeType> allSelectedRopesType = allSelectedRopesTypeResult
          .map((selectedRopesType) =>
              SelectedRopeType.fromJson(selectedRopesType))
          .toList();
      return allSelectedRopesType;
    } catch (err) {
      print("No Types Found in database enter new types : $err");
      return [];
    }
  }

  addSelectedRopesTypeList(List<SelectedRopeType> selectedRopeTypeList) async {
    try {
      selectedRopeTypeList.forEach((data) async {
        await _database.insert(selectedRopeTypeTable, data.toJson());
      });
    } catch (err) {
      print(err);
    }
  }

  // Get the current length of SelectedRopeTypeTable
  Future<int> getCurrentLengthOfAllTypes() async {
    int totalLength = 0;

    totalLength = await _database
        .query(selectedRopeTypeTable)
        .then((value) => value.length);

    return totalLength;
  }

  // for comparing the imported values from the current selectedRopeTypeTableValues
  Future<bool> compareTypeCoreConstruction(String compareType,
      String compareCore, String compareConstruction) async {
    bool equal = false;

    List<Map<String, dynamic>> queryResult = await _database.rawQuery(
        "SELECT * FROM $selectedRopeTypeTable " +
            "WHERE $type = '$compareType' AND $core = '$compareCore' AND $construction = '$compareConstruction'");

    if (queryResult.length > 0) equal = true;

    return equal;
  }

  // To show all the types that in the SelectedRopeTypeTable
  void showAllTypes() async {
    List<Map<String, dynamic>> resultList =
        await _database.query(selectedRopeTypeTable);

    List<SelectedRopeType> selectedRopeTypeList =
        resultList.map((data) => SelectedRopeType.fromJson(data)).toList();

    selectedRopeTypeList.forEach((element) {
      print(element);
    });
  }

  Future<int> getSelectedRopeTypeId(
      {required String compareType,
      required String compareCore,
      required String compareConstruction}) async {
    List<Map<String, dynamic>> resultList = await _database.rawQuery(
        "SELECT * FROM $selectedRopeTypeTable " +
            "WHERE $type = '$compareType' AND $core = '$compareCore' AND $construction = '$compareConstruction'");

    if (resultList.length > 0) {
      return SelectedRopeType.fromJson(resultList.first).selectedRopeTypeId;
    }
    return 0;
  }

  // ************************************************* excelDataTempTable *****************************************

  // Add the data from excel to Temp ExcelDataTable
  addExcelDataList(List<ExcelData> dataList) async {
    try {
      dataList.forEach((data) async {
        await _database.insert(excelDataTempTable, data.toJson());
      });
    } catch (err) {
      print(err);
    }
  }

  // To Show the lengths in the import page
  Future<List<ExcelData>> getLengthOfAllDistinctTypesExcelData() async {
    List<ExcelData> dataList = [];

    // TODO: Create model to get type, core, construction, count to show it in the import page

    List<Map> resultMap = await _database.rawQuery(
        "SELECT $type, $core, $construction, count(*) FROM $excelDataTempTable GROUP BY $type, $core, $construction");

    return dataList;
  }

  // For getting distinct Types to compare and insert into Types Table
  Future<List<ExcelData>> getGroupByTypeCoreConstruction() async {
    List<ExcelData> allDistinctTypeCoreConstructionList = [];

    List<Map<String, dynamic>> resultMap = await _database.rawQuery(
        "SELECT * FROM $excelDataTempTable GROUP BY $type, $core, $construction");

    allDistinctTypeCoreConstructionList = resultMap
        .map((distinctTypes) => ExcelData.fromJson(distinctTypes))
        .toList();

    return allDistinctTypeCoreConstructionList;
  }

  Future<List<ExcelData>> getSlingsTypeFromTempTable() async {
    try {
      List<Map<String, dynamic>> resultList = await _database
          .query(excelDataTempTable, where: '$type = ?', whereArgs: ['slings']);

      List<ExcelData> slingsExcelDataList =
          resultList.map((data) => ExcelData.fromJson(data)).toList();

      return slingsExcelDataList;
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<List<ViewCountExcelData>> getCountAndTypeFromExcel() async {
    List<Map<String, dynamic>> resultMap = await _database.rawQuery(
        "SELECT $type, $core, $construction, count(*) AS 'count' FROM $excelDataTempTable GROUP BY $type, $core, $construction ORDER BY $type, $core, $construction");

    List<ViewCountExcelData> finalList =
        resultMap.map((data) => ViewCountExcelData.fromJson(data)).toList();

    return finalList;
  }

  deleteAllValuesFromTempTable() async {
    await _database.delete(excelDataTempTable);
  }

  // ************************************************* ropesRateTable *****************************************

  Future<int> getCurrentLengthOfRopeRateTable() async {
    List<Map> resultList = await _database.query(ropesRateTable);

    return resultList.length;
  }

  Future<int> insertIntoRopeRatesTable(RopesRate ropesRate) async {
    return await _database.insert(ropesRateTable, ropesRate.toJson());
  }

  getAllRopesRate() async {
    List<Map<String, dynamic>> resultList =
        await _database.query(ropesRateTable);

    resultList.forEach((element) {
      print(element);
    });
    print(resultList.length);
  }

  Future<RopesRate> getRate(
      int compareSelectedRopeTypeId, String compareDiameter) async {
    List<Map<String, dynamic>> resultList = await _database.rawQuery(
        "SELECT * FROM $ropesRateTable " +
            "WHERE $selectedRopeTypeId = '$compareSelectedRopeTypeId' AND " +
            "$diameter = '$compareDiameter'");

    print(resultList.first['rate'].runtimeType);

    if (resultList.length > 0) {
      return RopesRate.fromJson(resultList.first);
    }
    return nullRopesRate;
  }

  Future<bool> checkWhetherRopeAlreadyPresent(RopesRate ropesRate) async {
    bool check = false;

    List<Map<String, dynamic>> queryResult = await _database.rawQuery(
        "SELECT * FROM $ropesRateTable " +
            "WHERE $selectedRopeTypeId = '${ropesRate.selectedRopeTypeId}' AND " +
            "$diameter = '${ropesRate.diameter}'");

    if (queryResult.length > 0) check = true;

    return check;
  }

  Future<int> getRateId(
      {required int compareSelectedRopeTypeId,
      required String compareDiameter}) async {
    List<Map<String, dynamic>> resultList = await _database.rawQuery(
        "SELECT * FROM $ropesRateTable " +
            "WHERE $selectedRopeTypeId = '$compareSelectedRopeTypeId' AND $diameter = '$compareDiameter'");

    print(resultList.first['rate'].runtimeType);

    if (resultList.length > 0) {
      return RopesRate.fromJson(resultList.first).ropeId;
    }
    return 0;
  }

  deleteAllValuesFromRopesRateTable() async {
    await _database.delete(ropesRateTable);
  }

  Future<List<RopesRate>> getRopesTypeWhere(int selectedRopeType) async {
    List<Map<String, dynamic>> resultList = await _database.query(
        ropesRateTable,
        where: '$selectedRopeTypeId = ?',
        whereArgs: [selectedRopeType]);
    return resultList
        .map((ropesRate) => RopesRate.fromJson(ropesRate))
        .toList();
  }

  // ************************************************* slingsRateTable *****************************************

  Future<int> getCurrentLengthOfSlingsRateTable() async {
    List<Map> resultList = await _database.query(slingsRateTable);

    return resultList.length;
  }

  Future<bool> checkWhetherSlingsAlreadyPresent(SlingsRate slingsRate) async {
    List<Map> resultList = await _database.rawQuery(
        "SELECT * FROM $slingsRateTable " +
            "WHERE $ropeId = '${slingsRate.ropeId}'");

    if (resultList.length > 0) return true;

    return false;
  }

  addSlingsRate(SlingsRate slingsRate) async {
    try {
      await _database.insert(slingsRateTable, slingsRate.toJson());
    } catch (e) {
      print(e);
    }
  }

  getAllSlingsRate() async {
    List<Map<String, dynamic>> resultList =
        await _database.query(slingsRateTable);

    resultList.forEach((element) {
      print(element);
    });
    print(resultList.length);
  }

  Future<SlingsRate> getSlingsRate(int compareRopeId) async {
    List<Map<String, dynamic>> resultList = await _database.rawQuery(
        "SELECT * FROM $slingsRateTable " + "WHERE $ropeId = '$compareRopeId'");

    if (resultList.length > 0) return SlingsRate.fromJson(resultList.first);

    return nullSlingsRate;
  }

  insertIntoFinalWire(FinalWire finalWire) async {

    String query =
        "INSERT INTO $finalWiresTable($originalPrice,$discount,$orderID,$totalMeters,$wireTitle,$wireDetails) "
        "VALUES(${finalWire.originalPrice}, ${finalWire.discount}, '${finalWire.orderID}', ${finalWire.totalMeters}, '${finalWire.wireTitle}', '${finalWire.wireDetails}');";

    await _database.rawInsert(query);
    // 'INSERT INTO $finalWireTable ($originalPrice,$discount,$orderID,$totalMeters,$wireTitle,$wireDetails) VALUES(?,?,?,?,?,?)',[finalWire.originalPrice, finalWire.discount, finalWire.orderID, finalWire.totalMeters, finalWire.wireTitle , finalWire.wireDetails]);

  }

  Future<List<FinalWire>> getFinalWiresForOrderID(String compareOrderID)async {
    List<Map<String, dynamic>> resultList = await _database.query(
        finalWiresTable,
        where: '$orderID = ?',
        whereArgs: [compareOrderID]);
    return resultList.map((finalWire) => FinalWire.fromJson(finalWire)).toList();
  }
}
