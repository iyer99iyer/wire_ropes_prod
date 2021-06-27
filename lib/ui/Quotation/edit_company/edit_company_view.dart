import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'edit_company_viewmodel.dart';

class EditCompanyView extends StatelessWidget {
  const EditCompanyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditCompanyViewModel>.reactive(
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(),
        viewModelBuilder: () => EditCompanyViewModel());
  }
}