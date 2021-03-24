import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/labeled_radio.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

import '_themed_value_based_form_field.dart';

class ThemedBoolFormField extends ThemedValueBasedFormField<bool> {
  ThemedBoolFormField({
    Key key,
    bool enabled = true,
    String title,
    Rx<bool> controller,
    bool isRequired,
    String trueText,
    String falseText,
    AutovalidateMode autovalidateMode,
    String Function(bool date) extraValidator,
    void Function(bool selectedValue) onSaved,
    bool isBusy = false,
  }) : super(
          key: key,
          selectedDisplayFunc: (x) => x ? trueText : falseText,
          enabled: enabled,
          autovalidateMode: autovalidateMode,
          controller: controller,
          extraValidator: extraValidator,
          isRequired: isRequired,
          isBusy: isBusy,
          onSaved: onSaved,
          childBuilder: (state) {
            //show 2 radio buttons ?
            final onChanged = (bool val) {
              if (state.value != val) state.didChange(val);
            };
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: LabeledRadio(
                      onChanged: onChanged,
                      color: ColorUtil.primaryColor,
                      groupValue: state.value,
                      value: true,
                      //padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                      label: trueText,
                    ),
                  ),
                  Expanded(
                    child: LabeledRadio(
                      onChanged: onChanged,
                      color: ColorUtil.primaryColor,
                      groupValue: state.value,
                      value: false,
                      //padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                      label: falseText,
                    ),
                  ),
                ],
              ),
            );
          },
          title: title,
        );

  @override
  ThemedValueBasedFormFieldState<bool> createState() =>
      ThemedValueBasedFormFieldState<bool>();
}
