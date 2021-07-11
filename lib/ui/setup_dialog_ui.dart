import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';
import 'package:wire_ropes/enums/dialog_type.dart';

import 'bottom_sheets/rate_bottom_sheet/rate_bottom_sheet_view.dart';
import 'dialogs/edit_rate_dialog/edit_rate_dialog_view.dart';

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final builders = {
    DialogType.editWireDialog: (BuildContext context,
            DialogRequest dialogRequest, Function(DialogResponse) completer) =>
        Dialog(
          child: EditRateDialogView(
            dialogRequest:dialogRequest,
            onDialogTap : completer,
          ),
        )
  };

  dialogService.registerCustomDialogBuilders(builders);
}
