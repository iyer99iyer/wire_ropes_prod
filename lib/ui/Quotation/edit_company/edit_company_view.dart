import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/styles/text_styles.dart';
import 'package:wire_ropes/shared_custom_styles_and_widget/widgets/box_text.dart';
import 'package:wire_ropes/ui/Quotation/quotation_theme.dart';
import 'package:wire_ropes/ui/dumb_widgets/custom_container_without_title.dart';
import 'package:wire_ropes/ui/shared/styles.dart';
import 'package:wire_ropes/ui/shared/ui_helpers.dart';

import 'edit_company_view.form.dart';
import 'edit_company_viewmodel.dart';

@FormView(
    fields: [
      FormTextField(name:'name'),
      FormTextField(name:'address'),
      FormTextField(name:'city'),
      FormTextField(name:'pincode'),
    ]
)
class EditCompanyView extends StatelessWidget with $EditCompanyView {
  EditCompanyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditCompanyViewModel>.reactive(
        onModelReady: (model) => listenToFormUpdated(model),
        builder: (context, model, child) => Scaffold(
              body: QuotationTheme(
                mainHeading: "Edit Company",
                subHeading: "Company Details -",
                orderId: "orderID",
                child: Column(
                  children: [
                    CustomContainerWithoutTitle(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: BoxText.button("M/s. Burhani Hardware"),
                        decoration: BoxDecoration(
                          color: kcPrimaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    verticalSpaceMedium,
                    CustomContainerWithoutTitle(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 8),
                        child: Column(
                          children: [
                            TextField(
                              controller: nameController,
                              focusNode: nameFocusNode,
                              decoration: InputDecoration(
                                labelText: "Name",
                                labelStyle: subHeadingStyle,
                                contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: 8),
                                border: OutlineInputBorder(),
                              ),
                              style: body,
                            ),
                            verticalSpaceSmall,
                            // TODO can be used for listview in Edit ropes page
                            // Container(
                            //   child: ConstrainedBox(
                            //     constraints: BoxConstraints(
                            //       maxHeight: 300.0,
                            //     ),
                            //     child: Scrollbar(
                            //       child: SingleChildScrollView(
                            //         scrollDirection: Axis.vertical,
                            //         reverse: true,
                            //         child: TextField(
                            //           maxLines: null,
                            //           style: body,
                            //           decoration: InputDecoration(
                            //             labelText: "Address",
                            //             labelStyle: subHeadingStyle,
                            //             contentPadding: EdgeInsets.all(1),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            TextField(
                              controller: addressController,
                              focusNode: addressFocusNode,
                              minLines: 1,
                              maxLines: 3,
                              decoration: InputDecoration(
                                labelText: "Address",
                                labelStyle: subHeadingStyle,
                                contentPadding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                                border: OutlineInputBorder(),
                              ),
                              style: body,
                            ),
                            verticalSpaceSmall,
                            TextField(
                              controller: cityController,
                              focusNode: cityFocusNode,
                              decoration: InputDecoration(
                                labelText: "City",
                                labelStyle: subHeadingStyle,
                                contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: 8),
                                border: OutlineInputBorder(),
                              ),
                              style: body,
                            ),
                            verticalSpaceSmall,
                            TextField(
                              controller: pincodeController,
                              focusNode: pincodeFocusNode,
                              decoration: InputDecoration(
                                labelText: "Pin Code",
                                labelStyle: subHeadingStyle,
                                contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: 8),
                                border: OutlineInputBorder(),
                              ),
                              style: body,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                buttonText: "Next",
                onTap: () => model.navigateToQuotationDetails(),
              ),
            ),
        viewModelBuilder: () => EditCompanyViewModel());
  }
}
