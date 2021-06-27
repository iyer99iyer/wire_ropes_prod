// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../ui/add_rates_excel/add_rates_excel_view.dart';
import '../ui/common_page/common_page_view.dart';
import '../ui/home_page/home_page_view.dart';
import '../ui/startup/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homePageView = '/home-page-view';
  static const String commonPageView = '/common-page-view';
  static const String addRatesExcelView = '/add-rates-excel-view';
  static const all = <String>{
    startupView,
    homePageView,
    commonPageView,
    addRatesExcelView,
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
