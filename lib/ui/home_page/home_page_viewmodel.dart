import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/app/app.router.dart';
import 'package:wire_ropes/ui/common_page/common_page_view.dart';

class HomePageViewModel extends BaseViewModel{

  final NavigationService _navigationService = locator<NavigationService>();

  String _msImagePath = "assets/image/ms_image.png";
  String _msTitle = "MS";
  String _ssImagePath = "assets/image/ss_image.png";
  String _ssTitle = "SS";
  String _sisalImagePath = "assets/image/sisal_image.png";
  String _sisalTitle = "Sisal";
  String _slingImagePath = "assets/image/sling_image.png";
  String _slingTitle = "Slings";
  String _calcImagePath = "assets/image/calc_image.png";
  String _calcTitle = "Breaking Load";

  String get msImagePath => _msImagePath;
  String get msTitle => _msTitle;
  String get ssImagePath => _ssImagePath;
  String get ssTitle => _ssTitle;
  String get sisalImagePath => _sisalImagePath;
  String get sisalTitle => _sisalTitle;
  String get slingImagePath => _slingImagePath;
  String get slingTitle => _slingTitle;
  String get calcImagePath => _calcImagePath;
  String get calcTitle => _calcTitle;

  void navigateToCommonPage({required String wireType}){
    _navigationService.navigateToView(CommonPageView(pageName: wireType));
  }

  void navigateToAddRatesExcel(){
    _navigationService.navigateTo(Routes.addRatesExcelView);
  }
  void navigateToNewQuotation(){
    _navigationService.navigateTo(Routes.newQuotationView);
  }

}