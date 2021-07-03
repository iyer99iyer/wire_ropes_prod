import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/styles/text_styles.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/widgets/box_text.dart';
import 'package:wire_ropes/ui/Quotation/quotation_details/quotation_details_view.form.dart';
import 'package:wire_ropes/ui/Quotation/quotation_details/quotation_details_viewmodel.dart';
import 'package:wire_ropes/ui/dumb_widgets/custom_container_without_title.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

import '../quotation_theme.dart';

@FormView(
    fields: [
      FormTextField(name:'subject'),
      FormTextField(name:'dear'),
      FormTextField(name:'body'),
      FormTextField(name:'terms'),
    ]
)
class QuotationDetailsView extends StatelessWidget with $QuotationDetailsView{
  QuotationDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<QuotationDetailsViewModel>.reactive(
        onModelReady: (model) => model.init(subjectController,bodyController,termsController),
        builder: (context, model, child) => Scaffold(
              body: QuotationTheme(
                mainHeading: "Edit Company",
                subHeading: "Quotation Details -",
                orderId: "orderID",
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoxText.headingFour("Subject :"),
                    CustomContainerWithoutTitle(
                      // child: Text(
                      //   "Reg.:  Proforma Invoice for 6x19 SC / FMC 1770 UNG. Steel Wire Ropes",
                      //   style: heading4Style,
                      // ),
                      child: TextField(
                        controller: subjectController,
                        focusNode: subjectFocusNode,
                        style: heading4Style,
                        minLines: 1,
                        maxLines: 3,
                        decoration: new InputDecoration.collapsed(
                            hintText: 'Subject'
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    BoxText.headingFour("Dear :"),
                    CustomContainerWithoutTitle(
                      // child: Text(
                      //   "",
                      //   style: heading4Style,
                      // ),
                      child: TextField(
                        controller: dearController,
                        focusNode: dearFocusNode,
                        style: heading4Style,
                        decoration: new InputDecoration.collapsed(
                            hintText: 'Dear'
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    BoxText.headingFour("Body :"),
                    CustomContainerWithoutTitle(
                      // child: Text(
                      //   "This is with reference to your order, BH/2020-21 Dt. 28.02.2021, we feel pleasure to forward our Proforma Invoice as Under: -  ",
                      //   style: heading4Style,
                      // ),
                      child: TextField(
                        controller: bodyController,
                        focusNode: bodyFocusNode,
                        style: heading4Style,
                        minLines: 1,
                        maxLines: 5,
                        decoration: new InputDecoration.collapsed(
                            hintText: 'Body'
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    BoxText.headingFour("Payment terms :"),
                    CustomContainerWithoutTitle(
                      // child: Text(
                      //   "We Sincerely hope that your good self will find the above to your entire satisfaction.  As per our payment terms send your 30 days PDC Cheque and Courier details as our office Address and Mail ID as under.  ",
                      //   style: heading4Style,
                      // ),
                      child: TextField(
                        controller: termsController,
                        focusNode: termsFocusNode,
                        style: heading4Style,
                        minLines: 1,
                        maxLines: 7,
                        decoration: new InputDecoration.collapsed(
                            hintText: 'Payment terms'
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                  ],
                ),
                buttonText: "Create Quotation PDF",
                onTap: () {},
              ),
            ),
        viewModelBuilder: () => QuotationDetailsViewModel());
  }
}
