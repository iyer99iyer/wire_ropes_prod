import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'new_quotation_viewmodel.dart';

class NewQuotationView extends StatelessWidget {
  const NewQuotationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewQuotationViewModel>.reactive(
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(),
        viewModelBuilder: () => NewQuotationViewModel());
  }
}