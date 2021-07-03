// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String NameValueKey = 'name';
const String AddressValueKey = 'address';
const String CityValueKey = 'city';
const String PincodeValueKey = 'pincode';

mixin $EditCompanyView on StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController pincodeController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode addressFocusNode = FocusNode();
  final FocusNode cityFocusNode = FocusNode();
  final FocusNode pincodeFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    nameController.addListener(() => _updateFormData(model));
    addressController.addListener(() => _updateFormData(model));
    cityController.addListener(() => _updateFormData(model));
    pincodeController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            NameValueKey: nameController.text,
            AddressValueKey: addressController.text,
            CityValueKey: cityController.text,
            PincodeValueKey: pincodeController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    nameController.dispose();
    addressController.dispose();
    cityController.dispose();
    pincodeController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get nameValue => this.formValueMap[NameValueKey];
  String? get addressValue => this.formValueMap[AddressValueKey];
  String? get cityValue => this.formValueMap[CityValueKey];
  String? get pincodeValue => this.formValueMap[PincodeValueKey];

  bool get hasName => this.formValueMap.containsKey(NameValueKey);
  bool get hasAddress => this.formValueMap.containsKey(AddressValueKey);
  bool get hasCity => this.formValueMap.containsKey(CityValueKey);
  bool get hasPincode => this.formValueMap.containsKey(PincodeValueKey);
}

extension Methods on FormViewModel {}
