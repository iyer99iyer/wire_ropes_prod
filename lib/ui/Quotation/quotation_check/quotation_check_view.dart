import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:wire_ropes/ui/Quotation/quotation_check/quotation_check_viewmodel.dart';

class QuotationCheckView extends StatelessWidget {
  const QuotationCheckView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<QuotationCheckViewModel>.reactive(
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(),
        viewModelBuilder: () => QuotationCheckViewModel());
  }
}
