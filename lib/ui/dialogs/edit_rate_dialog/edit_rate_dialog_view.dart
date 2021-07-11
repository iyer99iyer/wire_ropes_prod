import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/src/models/overlay_request.dart';
import 'package:stacked_services/src/models/overlay_response.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/app/app.locator.dart';

import 'edit_rate_dialog_viewmodel.dart';

class EditRateDialogView extends StatelessWidget {

  final dialogService = locator<DialogService>();

  final DialogRequest dialogRequest;
  final Function(DialogResponse) onDialogTap;

  EditRateDialogView(
      {Key? key,
      required this.dialogRequest,
      required this.onDialogTap, })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditRateDialogViewModel>.reactive(
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
          body: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  dialogRequest.title!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  dialogRequest.description!,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  // Complete the dialog when you're done with it to return some data
                  onTap: () => dialogService.completeDialog(DialogResponse(confirmed: true)),
                  child: Container(
                    child: dialogRequest.showIconInMainButton!
                        ? Icon(Icons.check_circle)
                        : Text(dialogRequest.mainButtonTitle!),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

        viewModelBuilder: () => EditRateDialogViewModel());
  }
}
