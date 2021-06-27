import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/model/bottom_sheet_custom_data/bottom_sheet_custom_data.dart';

class RateBottomSheetViewModel extends FormViewModel{

  final priceFormat = NumberFormat("#,##0.00", "en_US");

  late var customData;

  initialise(SheetRequest request) async{
      BottomSheetCustomData customData = request.customData;
      print(customData);
      _price = customData.coating == "Galvanised" ? 1.12 * customData.rate : customData.rate;
      _discountedPrice = _price;
      _gstPrice = 1.18*_discountedPrice;
  }

  double _price = 100;
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
      double discount = double.parse(value);
      print("dis: $discount");
      var v = 100*(1-discount/100);
      print("remaining per: $v , $_price");
      _discountedPrice = (1-discount/100)*_price;
      _discountedPrice = double.parse((_discountedPrice).toStringAsFixed(2));
      _gstPrice = 1.18*_discountedPrice;
      print(_discountedPrice);
      notifyListeners();
    }else{
      _discountedPrice = _price;
      notifyListeners();
    }

  }
}