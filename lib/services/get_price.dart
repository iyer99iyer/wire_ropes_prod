import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/model/ropes_rate/ropes_rate.dart';
import 'package:wire_ropes/model/slings_rate/slings_rate.dart';

import 'database_service.dart';

class GetPrice{

  DatabaseService _databaseService = locator<DatabaseService>();

  Future<RopesRate> getPriceMS({required String core, required String construction, required String diameter}) async {

    print("$type, $core, $construction");
    int selectedRopeType = await _databaseService.getSelectedRopeTypeId(
        compareType: "ms",
        compareCore: core,
        compareConstruction: construction);

    print(selectedRopeType);

    RopesRate ropesRate = await _databaseService.getRate(selectedRopeType,diameter);

    return ropesRate;
  }
  Future<RopesRate> getPriceSlings({required String core, required String construction, required String diameter}) async {

    print("$type, $core, $construction");
    int selectedRopeType = await _databaseService.getSelectedRopeTypeId(
        compareType: "slings",
        compareCore: core,
        compareConstruction: construction);

    print(selectedRopeType);

    RopesRate ropesRate = await _databaseService.getRate(selectedRopeType,diameter);

    return ropesRate;
  }

  Future<SlingsRate> getSlingsRate({required int ropeId}) async{
    SlingsRate slingsRate = await _databaseService.getSlingsRate(ropeId);

    return slingsRate;

  }

}