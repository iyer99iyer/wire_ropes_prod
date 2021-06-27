import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/enums/bottom_sheet_type.dart';
import 'package:wire_ropes/ui/bottom_sheets/slings_rate_bottom_sheet/slings_rate_bottom_sheet_view.dart';

import 'bottom_sheets/rate_bottom_sheet/rate_bottom_sheet_view.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.rateBottomSheet: (context, sheetRequest, completer) =>
        RateBottomSheetView(request: sheetRequest, completer: completer),
    BottomSheetType.slingsRateBottomSheet: (context, sheetRequest, completer) =>
        SlingsRateBottomSheetView(request: sheetRequest, completer: completer),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}


