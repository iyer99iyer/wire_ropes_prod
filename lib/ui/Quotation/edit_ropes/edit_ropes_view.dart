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
                mainHeading: "Edit Ropes ",
                subHeading: "Ropes Details -",
                orderId: "orderID",
                child: SizedBox(
                  height: screenHeightPercentage(context, percentage: .6),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ListView(
                          shrinkWrap: true,
                          primary: false,
                          children: [
                            RopeDetails(),
                            RopeDetails(),
                            RopeDetails(),
                          ],
                        ),
                      ),
                      verticalSpaceSmall,
                      Material(
                        color: kcPrimaryColor,
                        borderRadius: BorderRadius.circular(13),
                        child: InkWell(
                          onTap: () {},
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

class RopeDetails extends StatelessWidget {
  const RopeDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3, bottom: 3),
      child: Material(
        color: kcWireTypeButtonColor,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxText.headingThree("Metal Steel Rope"),
                      BoxText.headingThree("Discount"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxText.subHeading(
                          "Steel Core| 8X19 |7mm \nUn-Galvanised"),
                      BoxText.subHeadingColorStyle("23 %"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxText.headingFour("Quantity"),
                      BoxText.headingFour("500 mtr"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BoxText.headingFour("Rate"),
                      BoxText.headingFour("Rs. 20.30"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
