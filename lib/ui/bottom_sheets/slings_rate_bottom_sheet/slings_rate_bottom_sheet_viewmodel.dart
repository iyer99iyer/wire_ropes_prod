import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/model/bottom_sheet_custom_data/bottom_sheet_custom_data.dart';
import 'package:wire_ropes/model/slings_rate/slings_rate.dart';
import 'package:wire_ropes/services/get_price.dart';

class SlingsRateBottomSheetViewModel extends FormViewModel{

  final _getPrice = locator<GetPrice>();

  final priceFormat = NumberFormat("#,##0.00", "en_US");

  late var customData;

  late SlingsRate _slingsRate;

  initialise(SheetRequest request) async{
      BottomSheetCustomData customData = request.customData;
      print(customData);
      _price = customData.coating == "Galvanised" ? 1.12 * customData.rate : customData.rate;
      _lengthPrice = _price;
      _discountedPrice = _lengthPrice;
      _gstPrice = 1.18 * _discountedPrice;


      _slingsRate = await _getPrice.getSlingsRate(ropeId: customData.ropeId);

      _secondMeterRate = _slingsRate.secondMeterRate;

      _doubleFerrule = _slingsRate.doubleFerrule;

  }

  double _price = 100;
  double _discountedPrice = 0;
  double _doubleFerrule = 0.0;
  double _secondMeterRate =0.0;
  double _lengthPrice = 0;
  double _gstPrice = 0.0;



  int _length = 1;
  double _discount = 0.0;

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }

  String get price => priceFormat.format(_discountedPrice) ;
  String get gstPrice => priceFormat.format(_gstPrice);
  int get length => _length;

  updateLength(String lengthValue){
    if (lengthValue != ""&& !lengthValue.contains(" ")&& !lengthValue.contains("-")&& !lengthValue.contains(",")&& !lengthValue.contains(".")){
      _length = int.parse(lengthValue);
      if(_length>1){
        _lengthPrice = _price + _secondMeterRate*_length;
      }else{
        _lengthPrice = _price;
      }
    }else{
      _length = 1;
      _lengthPrice = _price;
    }
    updateDiscountedPrice();
    notifyListeners();
  }


  updatePrice(String value) {
    if (value != ""&& !value.contains(" ")&& !value.contains("-")&& !value.contains(",")) {
      _discount = double.parse(value);
      print("dis: $_discount");


    }else{
      _discountedPrice = _lengthPrice;
      _gstPrice = 1.18 * _discountedPrice;
      _discount = 0;
    }
    updateDiscountedPrice();
    notifyListeners();

  }

  updateDiscountedPrice(){
    var v = 100*(1-_discount/100);
    print("remaining per: $v , $_lengthPrice");
    _discountedPrice = (1-_discount/100)*_lengthPrice;
    _discountedPrice = double.parse((_discountedPrice).toStringAsFixed(2));
    _gstPrice = 1.18 * _discountedPrice;
    print(_discountedPrice);
  }

}