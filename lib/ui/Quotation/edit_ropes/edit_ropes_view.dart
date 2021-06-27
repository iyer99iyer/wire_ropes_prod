import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'edit_ropes_viewmodel.dart';

class EditRopesView extends StatelessWidget {
  const EditRopesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EditRopesViewModel>.reactive(
        onModelReady: (model) => model.init(),
        builder: (context, model, child) => Scaffold(),
        viewModelBuilder: () => EditRopesViewModel());
  }
}