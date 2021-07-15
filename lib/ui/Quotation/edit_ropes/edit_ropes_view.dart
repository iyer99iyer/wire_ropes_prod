import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/widgets/box_text.dart';
import 'package:wire_ropes/ui/dumb_widgets/RopeDetails.dart';
import 'package:wire_ropes/ui/dumb_widgets/custom_container_without_title.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';
import '../quotation_theme.dart';
import 'edit_ropes_viewmodel.dart';

class EditRopesView extends StatelessWidget {



  final String orderID;

  EditRopesView({Key? key, required this.orderID}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditRopesViewModel>.reactive(
        onModelReady: (model) => model.init(orderID),
        builder: (context, model, child) => Scaffold(
              body: QuotationTheme(
                mainHeading: "Edit Ropes ",
                subHeading: "Ropes Details -",
                orderId: orderID,
                child: SizedBox(
                  height: screenHeightPercentage(context, percentage: .6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: model.finalWires.length,
                            itemBuilder: (BuildContext context, int index){

                              var finalWire = model.finalWires[index];

                              return RopeDetails(
                                  wireTitle: finalWire.wireTitle,
                                  wireDetails: finalWire.wireDetails,
                                  discount: finalWire.discount.toString(),
                                  quantity: finalWire.totalMeters.toString(),
                                  rate: model.rate(finalWire.originalPrice,finalWire.discount)
                                  // rate: priceFormat.format(finalWire.originalPrice * (100-finalWire.discount)/100),
                              );
                            },
                        )
                        // ListView(
                        //   shrinkWrap: true,
                        //   primary: false,
                        //   children: [
                        //     RopeDetails(
                        //       wireTitle: "Metal Steel Rope",
                        //       wireDetails: "Steel Core| 8X19 |7mm \nUn-Galvanised",
                        //       discount: "25",
                        //       rate: "34.78" ,
                        //       quantity: "500",
                        //     ),
                        //     RopeDetails(
                        //       wireTitle: "Metal Steel Rope",
                        //       wireDetails: "Steel Core| 8X19 |7mm \nUn-Galvanised",
                        //       discount: "25",
                        //       rate: "34.78" ,
                        //       quantity: "500",
                        //     ),
                        //     RopeDetails(
                        //       wireTitle: "Metal Steel Rope",
                        //       wireDetails: "Steel Core| 8X19 |7mm \nUn-Galvanised",
                        //       discount: "25",
                        //       rate: "34.78" ,
                        //       quantity: "500",
                        //     ),
                        //   ],
                        // ),
                      ),
                      verticalSpaceSmall,
                      Material(
                        color: kcPrimaryColor,
                        borderRadius: BorderRadius.circular(13),
                        child: InkWell(
                          onTap: () => model.navigateToAddWire(),
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            child: BoxText.buttonTextMontserrat("+ Add Rope"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                buttonText: "Next",
                onTap: () => model.navigateToEditCompany(),
              ),
            ),
        viewModelBuilder: () => EditRopesViewModel());
  }
}