import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_themed_value_based_form_field.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import '_extensions.dart';

class ThemedDurationSelectorFormField
    extends ThemedValueBasedFormField<Duration> {
  ThemedDurationSelectorFormField({
    Key key,
    bool enabled = true,
    String title,
    Rx<Duration> controller,
    bool isRequired,
    AutovalidateMode autovalidateMode,
    String Function(Duration date) extraValidator,
    void Function(Duration selectedValue) onSaved,
    bool isBusy = false,
  }) : super(
          key: key,
          selectedDisplayFunc: (x) => x.toUserString(),
          enabled: enabled,
          autovalidateMode: autovalidateMode,
          controller: controller,
          extraValidator: extraValidator,
          isRequired: isRequired,
          onSaved: onSaved,
          isBusy: isBusy,
          onTap: (state) async {
            //show dialog
            final result = await AppUtil.pickDuration(state.value?.inDays);
            if (result != null) {
              state.didChange(Duration(days: result));
            }
          },
          title: title,
        );

  @override
  ThemedValueBasedFormFieldState<Duration> createState() =>
      ThemedValueBasedFormFieldState<Duration>();
}
