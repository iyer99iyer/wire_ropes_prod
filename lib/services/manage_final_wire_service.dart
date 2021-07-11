import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/model/final_wire/final_wire.dart';
import 'package:wire_ropes/services/database_service.dart';

class ManageFinalWireService{

  final _databaseService = locator<DatabaseService>();


  insertIntoFinalWires(FinalWire finalWire)async{

    if (finalWire.wireTitle != "null"){
      await _databaseService.insertIntoFinalWire(finalWire);
    }

  }
  updateIntoFinalWires(FinalWire finalWire){}
  deleteFromFinalWires(int serialID){}
  getAllFinalWires(){  }
  getFinalWiresForOrderID(String orderID){}
}