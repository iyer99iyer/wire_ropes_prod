// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String DiscountValueKey = 'discount';
const String LengthValueKey = 'length';

mixin $SlingsRateBottomSheetView on StatelessWidget {
  final TextEditingController discountController = TextEditingController();
  final TextEditingController lengthController = TextEditingController();
  final FocusNode discountFocusNode = FocusNode();
  final FocusNode lengthFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    discountController.addListener(() => _updateFormData(model));
    lengthController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            DiscountValueKey: discountController.text,
            LengthValueKey: lengthController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    discountController.dispose();
    lengthController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get discountValue => this.formValueMap[DiscountValueKey];
  String? get lengthValue => this.formValueMap[LengthValueKey];

  bool get hasDiscount => this.formValueMap.containsKey(DiscountValueKey);
  bool get hasLength => this.formValueMap.containsKey(LengthValueKey);
}

extension Methods on FormViewModel {}
