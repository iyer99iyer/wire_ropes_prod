import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/model/ropes_rate/ropes_rate.dart';
import 'package:wire_ropes/services/database_service.dart';

class GetDiameter {
  DatabaseService _databaseService = locator<DatabaseService>();

  Future<List<String>> getDiameterMS(String type, String core, String construction) async {

    late List<String> diameterList = [];
    print("$type, $core, $construction");
    int selectedRopeType = await _databaseService.getSelectedRopeTypeId(
        compareType: type,
        compareCore: core,
        compareConstruction: construction);

    print(selectedRopeType);

    List<RopesRate> ropesRateList = await _databaseService.getRopesTypeWhere(selectedRopeType);

    ropesRateList.forEach((ropesRate) => print(ropesRate.diameter));

    ropesRateList.forEach((ropesRate) => diameterList.add(ropesRate.diameter));

    return diameterList;
  }
  Future<List<String>> getDiameterSS(String type, String core, String construction) async {

    late List<String> diameterList = [];
    print("$type, $core, $construction");
    int selectedRopeType = await _databaseService.getSelectedRopeTypeId(
        compareType: type,
        compareCore: core,
        compareConstruction: construction);

    print(selectedRopeType);

    List<RopesRate> ropesRateList = await _databaseService.getRopesTypeWhere(selectedRopeType);

    ropesRateList.forEach((ropesRate) => print(ropesRate.diameter));

    ropesRateList.forEach((ropesRate) => diameterList.add(ropesRate.diameter));

    return diameterList;
  }
  Future<List<String>> getDiameterSlings(String type, String core, String construction) async {

    late List<String> diameterList = [];
    print("$type, $core, $construction");
    int selectedRopeType = await _databaseService.getSelectedRopeTypeId(
        compareType: type,
        compareCore: core,
        compareConstruction: construction);

    print(selectedRopeType);

    List<RopesRate> ropesRateList = await _databaseService.getRopesTypeWhere(selectedRopeType);

    ropesRateList.forEach((ropesRate) => print(ropesRate.diameter));

    ropesRateList.forEach((ropesRate) => diameterList.add(ropesRate.diameter));

    return diameterList;
  }
  Future<List<String>> getDiameterSisal(String type, String core, String construction) async {

    late List<String> diameterList = [];
    print("$type, $core, $construction");
    int selectedRopeType = await _databaseService.getSelectedRopeTypeId(
        compareType: type,
        compareCore: core,
        compareConstruction: construction);

    print(selectedRopeType);

    List<RopesRate> ropesRateList = await _databaseService.getRopesTypeWhere(selectedRopeType);

    ropesRateList.forEach((ropesRate) => print(ropesRate.diameter));

    ropesRateList.forEach((ropesRate) => diameterList.add(ropesRate.diameter));

    return diameterList;
  }
}
