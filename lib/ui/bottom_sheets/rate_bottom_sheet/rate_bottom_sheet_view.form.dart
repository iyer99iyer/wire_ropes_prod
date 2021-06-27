// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String DiscountValueKey = 'discount';

mixin $RateBottomSheetView on StatelessWidget {
  final TextEditingController discountController = TextEditingController();
  final FocusNode discountFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    discountController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            DiscountValueKey: discountController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    discountController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get discountValue => this.formValueMap[DiscountValueKey];

  bool get hasDiscount => this.formValueMap.containsKey(DiscountValueKey);
}

extension Methods on FormViewModel {}
