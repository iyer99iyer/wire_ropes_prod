import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/model/excel_data/excel_data.dart';
import 'package:wire_ropes/model/ropes_rate/ropes_rate.dart';
import 'package:wire_ropes/model/selected_rope_type/selected_rope_type.dart';
import 'package:wire_ropes/model/slings_rate/slings_rate.dart';
import 'package:wire_ropes/model/view_count_excel_data/view_count_excel_data.dart';
import 'package:wire_ropes/services/database_service.dart';

class InsertDataService {
  DatabaseService _databaseService = locator<DatabaseService>();

  insertDataList(List<ExcelData> dataList) async {

    // remove previous values from the temp table
    await _databaseService.deleteAllValuesFromTempTable();

    // inserting all the values to the temp table (having parameters as the ExcelData object)
    await _databaseService.addExcelDataList(dataList);

    // check and insert imported excel types in the selectedRopeTypeTable
    await checkAndInsertIntoTypeTable();

    // check and insert imported excel rope rates in the ropeRateTable
    await checkAndInsertIntoRopeRateTable(dataList);

    // get all the excel data list where type is slings. Then check and insert into slings rate table
    await checkAndInsertIntoSlingsTable();


  }

  checkAndInsertIntoTypeTable()async{
    // get imported distinct data on the basis of type core construction
    List<ExcelData> excelDataListDistinctTypes =
        await _databaseService.getGroupByTypeCoreConstruction();

    // get length of currentSelectedRopeTypeTable
    int currentSelectedRopeTypeTableLength =
        await _databaseService.getCurrentLengthOfAllTypes();

    // create finalSelectedTypesTableData of type List<SelectedRopeType>
    List<SelectedRopeType> finalSelectedRopeTypeTableDataList = [];

    // check the length if it is greater than zero
    if (currentSelectedRopeTypeTableLength > 0) {

      // run forEach on imported distinct data
      excelDataListDistinctTypes.forEach((excelData) async {
        // bool value to track matching values
        bool checkEqual = false;

        // check if all three parameters matches type core construction
        checkEqual = await _databaseService.compareTypeCoreConstruction(
            excelData.type, excelData.core, excelData.construction);

        // if matches bool = false
        if (!checkEqual)
          // add the parameters object imported distinct data in the form of the object SelectedRopeTypeTableModel
          finalSelectedRopeTypeTableDataList.add(
            SelectedRopeType(
              // in the int id = ++currentSelectedRopeTypeTableLength
              selectedRopeTypeId: ++currentSelectedRopeTypeTableLength,
              type: excelData.type,
              core: excelData.core,
              construction: excelData.construction,
            ),
          );
      });

      // insert finalSelectedTypesTableData into SelectedRopeTypeTable

    } else {
      excelDataListDistinctTypes
          .forEach((excelData) => finalSelectedRopeTypeTableDataList.add(
        SelectedRopeType(
          // in the int id = ++currentSelectedRopeTypeTableLength
          selectedRopeTypeId: ++currentSelectedRopeTypeTableLength,
          type: excelData.type,
          core: excelData.core,
          construction: excelData.construction,
        ),
      ));
    }
    if (finalSelectedRopeTypeTableDataList.length > 0) {
      await _databaseService
          .addSelectedRopesTypeList(finalSelectedRopeTypeTableDataList);
    }
    // _databaseService.showAllTypes();
  }

  checkAndInsertIntoRopeRateTable(List<ExcelData> dataList) async{

    // get current rope_rate_table length
    int currentRopeRateTableLength = await _databaseService.getCurrentLengthOfRopeRateTable();

    // to track non inserted value if caused any error
    List<ExcelData> dataNotInserted = [],insertedValues = [];

    // run forEach on dataList
    for(ExcelData data in dataList){
    // dataList.forEach((data)async {

      // fetch selectedRopeTypeId for data
      int selectedRopeTypeId = await _databaseService.getSelectedRopeTypeId(
          compareType:data.type,
          compareCore:data.core,
          compareConstruction: data.construction
        );

      // make an rope_rate object with selectedRopeTypeId and
      // diameter and rate from data and ropeId ++current length of rope_rate_table
      RopesRate ropesRate = RopesRate(ropeId: ++currentRopeRateTableLength, diameter: data.diameter, rate: data.rate, selectedRopeTypeId: selectedRopeTypeId);

      // check whether the value is present in RopesRateTable
      bool alreadyPresent = await _databaseService.checkWhetherRopeAlreadyPresent(ropesRate);

      if(alreadyPresent){
        // if present don't insert the value
        dataNotInserted.add(data);
      }else{
        // if not available insert the value
        await _databaseService.insertIntoRopeRatesTable(ropesRate);
        insertedValues.add(data);
      }

    }

  }

  checkAndInsertIntoSlingsTable() async{

    // get data from the temp table where type = slings
    List<ExcelData> slingsTypeExcelDataList = await _databaseService.getSlingsTypeFromTempTable();

    if(slingsTypeExcelDataList.isNotEmpty) {
      // get current length of the slingsRateTable
      int currentSlingsRateTableLength = await _databaseService.getCurrentLengthOfSlingsRateTable();

      // forEach loop
      for(ExcelData data in slingsTypeExcelDataList) {
        // get selectedRopeTypeId
        int selectedRopeTypeId = await _databaseService.getSelectedRopeTypeId(compareType: data.type, compareCore: data.core, compareConstruction: data.construction);

        // get ropeId
        int ropeId = await _databaseService.getRateId(compareSelectedRopeTypeId: selectedRopeTypeId ,compareDiameter : data.diameter);

        // create object of slingsRate with ropeId and secondMeterRate, doubleFerruleRate from excelData
        // and ++current length of the slingsRateTable
        SlingsRate slingsRate = SlingsRate(slingsId: ++currentSlingsRateTableLength, secondMeterRate: data.secondMeterRate, doubleFerrule: data.doubleFerrule, ropeId: ropeId);

        // check whether the slings value already present
        bool check = await _databaseService.checkWhetherSlingsAlreadyPresent(slingsRate);

        if (!check) {

          // insert into the slings rate table
          await _databaseService.addSlingsRate(slingsRate);

        }



      }

    }


  }

  showDataList() async {
    int lengthOfElement = await _databaseService.getCurrentLengthOfAllTypes();

    print(lengthOfElement);

    if (lengthOfElement > 0) {}
    // await _databaseService.showGroupByTypeCoreConstruction();


    // await _databaseService.getAllRopesRate();

    await _databaseService.getAllSlingsRate();

    // await _databaseService.getSlingsTypeFromTempTable();

  }

  Future<List<ViewCountExcelData>> addToTempDBAndShowData(List<ExcelData> dataList)async{

    // remove previous values from the temp table
    await _databaseService.deleteAllValuesFromTempTable();

    // inserting all the values to the temp table (having parameters as the ExcelData object)
    await _databaseService.addExcelDataList(dataList);

    List<ViewCountExcelData> viewCountExcelDataList = await _databaseService.getCountAndTypeFromExcel();

    viewCountExcelDataList.forEach((element) {print(element);});

    return viewCountExcelDataList;

  }

}
