import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_themed_value_based_form_field.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import '_extensions.dart';

class ThemedDateSelectorFormField extends ThemedValueBasedFormField<DateTime> {
  ThemedDateSelectorFormField({
    Key key,
    bool enabled = true,
    String title,
    Rx<DateTime> controller,
    bool isRequired,
    AutovalidateMode autovalidateMode,
    String Function(DateTime date) extraValidator,
    void Function(DateTime selectedValue) onSaved,
    bool isBusy = false,
  }) : super(
          key: key,
          selectedDisplayFunc: (x) => x.toShortUserString(),
          enabled: enabled,
          autovalidateMode: autovalidateMode,
          controller: controller,
          extraValidator: extraValidator,
          isRequired: isRequired,
          isBusy: isBusy,
          onSaved: onSaved,
          onTap: (state) async {
            //show dialog
            final result = await AppUtil.pickDate(state.value);
            if (result != null) {
              state.didChange(result);
            }
          },
          title: title,
        );

  @override
  ThemedValueBasedFormFieldState<DateTime> createState() =>
      ThemedValueBasedFormFieldState<DateTime>();
}
