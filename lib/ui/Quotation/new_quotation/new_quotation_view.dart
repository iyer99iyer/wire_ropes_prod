import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/ui/Quotation/quotation_theme.dart';
import 'package:wire_ropes/ui/dumb_widgets/custom_container_without_title.dart';
import 'package:wire_ropes/ui/shared/styles.dart';

import 'new_quotation_viewmodel.dart';

class NewQuotationView extends StatelessWidget {
  const NewQuotationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewQuotationViewModel>.reactive(
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(
          body: QuotationTheme(
            mainHeading: "Create Quotation",
            subHeading: "Select",
            orderId: "Order ID",
            child: CustomContainerWithoutTitle(child: Text("OrderID"),),
            buttonText: "Next",
            onTap: ()=>model.navigateToEditRopes(),
          ),
        ),
        viewModelBuilder: () => NewQuotationViewModel());
  }
}