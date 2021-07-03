// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String SubjectValueKey = 'subject';
const String DearValueKey = 'dear';
const String BodyValueKey = 'body';
const String TermsValueKey = 'terms';

mixin $QuotationDetailsView on StatelessWidget {
  final TextEditingController subjectController = TextEditingController();
  final TextEditingController dearController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  final TextEditingController termsController = TextEditingController();
  final FocusNode subjectFocusNode = FocusNode();
  final FocusNode dearFocusNode = FocusNode();
  final FocusNode bodyFocusNode = FocusNode();
  final FocusNode termsFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    subjectController.addListener(() => _updateFormData(model));
    dearController.addListener(() => _updateFormData(model));
    bodyController.addListener(() => _updateFormData(model));
    termsController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            SubjectValueKey: subjectController.text,
            DearValueKey: dearController.text,
            BodyValueKey: bodyController.text,
            TermsValueKey: termsController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    subjectController.dispose();
    dearController.dispose();
    bodyController.dispose();
    termsController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get subjectValue => this.formValueMap[SubjectValueKey];
  String? get dearValue => this.formValueMap[DearValueKey];
  String? get bodyValue => this.formValueMap[BodyValueKey];
  String? get termsValue => this.formValueMap[TermsValueKey];

  bool get hasSubject => this.formValueMap.containsKey(SubjectValueKey);
  bool get hasDear => this.formValueMap.containsKey(DearValueKey);
  bool get hasBody => this.formValueMap.containsKey(BodyValueKey);
  bool get hasTerms => this.formValueMap.containsKey(TermsValueKey);
}

extension Methods on FormViewModel {}
