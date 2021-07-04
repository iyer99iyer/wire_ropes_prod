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
