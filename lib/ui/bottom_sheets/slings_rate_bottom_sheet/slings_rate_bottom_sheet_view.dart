import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/widgets/box_text.dart';
import 'package:wire_ropes/ui/bottom_sheets/slings_rate_bottom_sheet/slings_rate_bottom_sheet_viewmodel.dart';
import 'package:wire_ropes/ui/dumb_widgets/RoundMaterialButton.dart';
import 'package:wire_ropes/ui/shared/styles.dart';

import 'slings_rate_bottom_sheet_view.form.dart';

@FormView(fields: [
  FormTextField(name: 'discount'),
  FormTextField(name: 'length'),
])
class SlingsRateBottomSheetView extends StatelessWidget
    with $SlingsRateBottomSheetView {
  final SheetRequest request;
  final Function(SheetResponse) completer;
  SlingsRateBottomSheetView(
      {Key? key, required this.request, required this.completer})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SlingsRateBottomSheetViewModel>.reactive(
      onModelReady: (model) => model.initialise(request),
      builder: (context, model, child) => Container(
        height: MediaQuery.of(context).size.height * .62,
        margin: EdgeInsets.all(25),
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListView(
          primary: false,
          shrinkWrap: true,
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoxText.headingOne(
                        request.title!,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * .5,
                          child: BoxText.subHeading(request.description!))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => completer(SheetResponse(confirmed: false)),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: kcButtonColor,
                    ),
                    child: BoxText.button("Edit"),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BoxText.headingTwo("Length"),
                Row(
                  children: [
                    Container(
                      width: 50,
                      child: TextField(
                        //TODO
                        controller: lengthController,
                        focusNode: lengthFocusNode,
                        onChanged: (value) => model.updateLength(value),
                        maxLength: 5,
                        style: TextStyle(color: kcButtonColor, fontSize: 20),
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1),
                          labelText: "Length",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          alignLabelWithHint: true,
                        ),
                      ),
                    ),
                    BoxText.headingThree("M"),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BoxText.headingTwo("Discount"),
                Row(
                  children: [
                    Container(
                      width: 60,
                      child: TextField(
                        //TODO
                        // controller: discountController,
                        // focusNode: discountFocusNode,
                        onChanged: (value) => model.updatePrice(value),
                        maxLength: 5,
                        style: TextStyle(color: kcButtonColor, fontSize: 20),
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(1),
                          labelText: "0",
                          labelStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          alignLabelWithHint: true,
                        ),
                      ),
                    ),
                    BoxText.headingThree("%"),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BoxText.body("${model.length}M Price"),
                BoxText.body("${model.price}"),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BoxText.body("+18% GST"),
                BoxText.body("${model.gstPrice}"),
              ],
            ),
            Divider(
              thickness: 2,
            ),
            RoundMaterialButton(
              title: "Quotation",
              onTap: () {},
              isButtonDisabled: false,
            )
          ],
        ),
      ),
      viewModelBuilder: () => SlingsRateBottomSheetViewModel(),
    );
  }
}
