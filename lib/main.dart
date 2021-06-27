import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/ui/setup_bottom_sheet_ui.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';

void main() {
  setupLocator();
  setupBottomSheetUi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      // home: HomePageView(),
    );
  }
}
