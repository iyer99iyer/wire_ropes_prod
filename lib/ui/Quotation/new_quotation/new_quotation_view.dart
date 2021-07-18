import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/model/final_wire/final_wire.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/widgets/box_text.dart';
import 'package:wire_ropes/ui/Quotation/quotation_theme.dart';
import 'package:wire_ropes/ui/dumb_widgets/RopeDetails.dart';
import 'package:wire_ropes/ui/dumb_widgets/custom_container_without_title.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

import 'new_quotation_viewmodel.dart';

class NewQuotationView extends StatelessWidget {
  final FinalWire? wireData;

  const NewQuotationView({Key? key, this.wireData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewQuotationViewModel>.reactive(
        onModelReady: (model) => model.init(wireData),
        builder: (context, model, child) => Scaffold(
              body: QuotationTheme(
                mainHeading: "Create Quotation",
                subHeading: "Select",
                orderId: "Order ID",
                child: Column(
                  children: [
                    wireData != null
                        ? Column(
                            children: [
                              BoxText.mainHeadingBlackMontserrat("FOR"),
                              RopeDetails(
                                wireTitle: wireData!.wireTitle,
                                wireDetails: wireData!.wireDetails,
                                discount: wireData!.discount.toString(),
                                rate: (wireData!.originalPrice *
                                        (100 - wireData!.discount) /
                                        100)
                                    .toStringAsFixed(2)
                                    .toString(),
                                quantity: wireData!.totalMeters.toString(),
                              ),
                              verticalSpaceMedium,
                            ],
                          )
                        : verticalSpaceTiny,
                    CustomContainerWithoutTitle(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: kcPrimaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        // child: BoxText.buttonTextMontserrat(
                        //     "Generate New OrderID"),
                        child: DropdownButton<String>(
                          dropdownColor: kcPrimaryColor,
                          hint: BoxText.buttonTextMontserrat("Select Order ID"),
                          value: model.dropdownValue,
                          items: model.dropdownItemList.map((valueItem) {
                            return DropdownMenuItem<String>(
                              value: valueItem,
                              child: BoxText.buttonTextMontserrat(valueItem),
                            );
                          }).toList(),
                          onChanged: (_value) => model.updateDropdown(_value),
                        ),
                      ),
                    ),
                  ],
                ),
                buttonText: "Next",
                onTap: () => model.navigateToEditRopes(),
              ),
            ),
        viewModelBuilder: () => NewQuotationViewModel());
  }
}
