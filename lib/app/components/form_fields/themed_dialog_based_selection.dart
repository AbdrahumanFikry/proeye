import 'package:flutter/material.dart';
import 'package:pro_eye/app/components/form_fields/_themed_value_based_form_field.dart';
import 'package:get/get.dart';

class ThemedDialogBasedSelectionFormField<T>
    extends ThemedValueBasedFormField<T> {
  ThemedDialogBasedSelectionFormField({
    Key key,
    bool enabled = true,
    String title,
    Rx<T> controller,
    bool isRequired,
    AutovalidateMode autovalidateMode,
    String Function(T date) extraValidator,
    void Function(FormFieldState<T> state) onTap,
    String Function(T) selectedDisplayFunc,
    void Function(T selectedValue) onSaved,
    bool isBusy = false,
  }) : super(
          key: key,
          selectedDisplayFunc: selectedDisplayFunc,
          enabled: enabled,
          autovalidateMode: autovalidateMode,
          controller: controller,
          extraValidator: extraValidator,
          isRequired: isRequired,
          isBusy: isBusy,
          onSaved: onSaved,
          onTap: onTap,
          title: title,
        );

  @override
  ThemedValueBasedFormFieldState<T> createState() =>
      ThemedValueBasedFormFieldState<T>();
}
