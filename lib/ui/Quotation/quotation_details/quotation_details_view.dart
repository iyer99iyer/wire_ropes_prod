import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/ui/Quotation/quotation_details/quotation_details_viewmodel.dart';

class QuotationDetailsView extends StatelessWidget {
  const QuotationDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<QuotationDetailsViewModel>.reactive(
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(),
        viewModelBuilder: () => QuotationDetailsViewModel());
  }
}