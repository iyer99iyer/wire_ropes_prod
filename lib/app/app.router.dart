// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/Quotation/edit_company/edit_company_view.dart';
import '../ui/Quotation/edit_ropes/edit_ropes_view.dart';
import '../ui/Quotation/new_quotation/new_quotation_view.dart';
import '../ui/Quotation/quotation_check/quotation_check_view.dart';
import '../ui/Quotation/quotation_details/quotation_details_view.dart';
import '../ui/add_rates_excel/add_rates_excel_view.dart';
import '../ui/common_page/common_page_view.dart';
import '../ui/home_page/home_page_view.dart';
import '../ui/startup/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homePageView = '/home-page-view';
  static const String commonPageView = '/common-page-view';
  static const String addRatesExcelView = '/add-rates-excel-view';
  static const String newQuotationView = '/new-quotation-view';
  static const String editCompanyView = '/edit-company-view';
  static const String editRopesView = '/edit-ropes-view';
  static const String quotationDetailsView = '/quotation-details-view';
  static const String quotationCheckView = '/quotation-check-view';
  static const all = <String>{
    startupView,
    homePageView,
    commonPageView,
    addRatesExcelView,
    newQuotationView,
    editCompanyView,
    editRopesView,
    quotationDetailsView,
    quotationCheckView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homePageView, page: HomePageView),
    RouteDef(Routes.commonPageView, page: CommonPageView),
    RouteDef(Routes.addRatesExcelView, page: AddRatesExcelView),
    RouteDef(Routes.newQuotationView, page: NewQuotationView),
    RouteDef(Routes.editCompanyView, page: EditCompanyView),
    RouteDef(Routes.editRopesView, page: EditRopesView),
    RouteDef(Routes.quotationDetailsView, page: QuotationDetailsView),
    RouteDef(Routes.quotationCheckView, page: QuotationCheckView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    HomePageView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomePageView(),
        settings: data,
      );
    },
    CommonPageView: (data) {
      var args = data.getArgs<CommonPageViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => CommonPageView(
          key: args.key,
          pageName: args.pageName,
        ),
        settings: data,
      );
    },
    AddRatesExcelView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AddRatesExcelView(),
        settings: data,
      );
    },
    NewQuotationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const NewQuotationView(),
        settings: data,
      );
    },
    EditCompanyView: (data) {
      var args = data.getArgs<EditCompanyViewArguments>(
        orElse: () => EditCompanyViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditCompanyView(key: args.key),
        settings: data,
      );
    },
    EditRopesView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const EditRopesView(),
        settings: data,
      );
    },
    QuotationDetailsView: (data) {
      var args = data.getArgs<QuotationDetailsViewArguments>(
        orElse: () => QuotationDetailsViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => QuotationDetailsView(key: args.key),
        settings: data,
      );
    },
    QuotationCheckView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const QuotationCheckView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// CommonPageView arguments holder class
class CommonPageViewArguments {
  final Key? key;
  final String pageName;
  CommonPageViewArguments({this.key, required this.pageName});
}

/// EditCompanyView arguments holder class
class EditCompanyViewArguments {
  final Key? key;
  EditCompanyViewArguments({this.key});
}

/// QuotationDetailsView arguments holder class
class QuotationDetailsViewArguments {
  final Key? key;
  QuotationDetailsViewArguments({this.key});
}
