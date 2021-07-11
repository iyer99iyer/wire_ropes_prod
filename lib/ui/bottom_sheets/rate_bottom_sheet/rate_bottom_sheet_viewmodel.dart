import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/model/bottom_sheet_custom_data/bottom_sheet_custom_data.dart';
import 'package:wire_ropes/model/final_wire/final_wire.dart';

class RateBottomSheetViewModel extends FormViewModel{


  final priceFormat = NumberFormat("#,##,##0.00", "en_IN");

  late var customData;

  SheetRequest? _request;

  initialise(SheetRequest request) async{
      BottomSheetCustomData data = request.data;
      _request = request;
      print(data);
      _price = data.coating == "Galvanised" ? 1.12 * data.rate : data.rate;
      _discountedPrice = _price;
      _gstPrice = 1.18*_discountedPrice;
  }

  double _price = 100;
  double _discount = 0;
  double _discountedPrice = 0;
  double _gstPrice = 0.0;

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  String get price => priceFormat.format(_discountedPrice) ;

  String get gstPrice => priceFormat.format(_gstPrice);


  updatePrice(String value) {
    if (value != ""&& !value.contains(" ")&& !value.contains("-")&& !value.contains(",")) {
      _discount = double.parse(value);
      print("dis: $_discount");
      var v = 100*(1-_discount/100);
      print("remaining per: $v , $_price");
      _discountedPrice = (1-_discount/100)*_price;
      _discountedPrice = double.parse((_discountedPrice).toStringAsFixed(2));
      _gstPrice = 1.18*_discountedPrice;
      print(_discountedPrice);
      notifyListeners();
    }else{
      _discountedPrice = _price;
      notifyListeners();
    }

  }

  FinalWire wireData(){
    return FinalWire(originalPrice: _price, discount: _discount, wireTitle: _request!.title!, wireDetails: _request!.description!);
  }

}