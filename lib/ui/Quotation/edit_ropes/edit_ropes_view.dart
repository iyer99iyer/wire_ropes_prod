import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/widgets/box_text.dart';
import 'package:wire_ropes/ui/dumb_widgets/custom_container_without_title.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';
import '../quotation_theme.dart';
import 'edit_ropes_viewmodel.dart';

class EditRopesView extends StatelessWidget {
  const EditRopesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditRopesViewModel>.reactive(
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
              body: QuotationTheme(
                mainHeading: "Create Quotation",
                subHeading: "Select",
                orderId: "orderID",
                child: SizedBox(
                  height: screenHeightPercentage(context, percentage: .5),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            CustomContainerWithoutTitle(
                                child: Container(
                              height: 0,
                            ))
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: kcPrimaryColor,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: BoxText.buttonTextMontserrat("+ Add Rope"),
                      ),
                    ],
                  ),
                ),
                buttonText: "Next",
                onTap: () {},
              ),
            ),
        viewModelBuilder: () => EditRopesViewModel());
  }
}
