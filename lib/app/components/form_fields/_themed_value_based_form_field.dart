import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_themed_base_stub.dart';
import 'package:pro_eye/app/components/form_fields/themed_error_widget.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';

abstract class ThemedValueBasedFormField<T> extends FormField<T> {
  final Rx<T> controller;

  ThemedValueBasedFormField({
    Key key,
    bool enabled = true,
    bool isBusy,
    String title,
    this.controller,
    bool isRequired,
    Widget Function(FormFieldState<T>) childBuilder,
    void Function(FormFieldState<T> selectedValue) onTap,
    @required String Function(T selectedValue) selectedDisplayFunc,
    AutovalidateMode autovalidateMode,
    String Function(T date) extraValidator,
    EdgeInsets childMargin =
        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    void Function(T selectedValue) onSaved,
    Widget trailing,
  }) : super(
          key: key,
          builder: (state) {
            return ThemedBaseStub(
              title: title,
              margin: childMargin,
              isBusy: isBusy,
              trailing: trailing,
              errorWidget:
                  state.hasError ? ThemedErrorWidget(state.errorText) : null,
              child: childBuilder != null
                  ? childBuilder(state)
                  : Align(
                      child: Text(
                        selectedDisplayFunc(state.value),
                        style: TextStyle(
                          color: ColorUtil.primaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 34.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
              aboveDataBuilder: (context, neumorphic) {
                if (onTap == null) {
                  return neumorphic;
                } else {
                  return InkWell(
                    onTap: enabled ? () => onTap.call(state) : null,
                    child: neumorphic,
                  );
                }
              },
            );
          },
          enabled: enabled,
          autovalidateMode: autovalidateMode,
          initialValue: controller.value,
          onSaved: onSaved,
          validator: QuickGenericValidator(
            isRequired: isRequired,
            extraValidation: extraValidator,
          ),
        );
}

class ThemedValueBasedFormFieldState<T> extends FormFieldState<T> {
  @override
  ThemedValueBasedFormField<T> get widget => super.widget;

  Rx<T> get controller => widget.controller;
  StreamSubscription _sub;
  void _handleControllerChanged(newVal) {
    if (newVal != value) didChange(newVal);
  }

  @override
  void initState() {
    super.initState();
    _sub = controller.listen(_handleControllerChanged);
    setValue(controller.value);
  }

  @override
  void dispose() {
    _sub?.cancel();
    _sub = null;
    super.dispose();
  }

  @override
  void didChange(T value) {
    super.didChange(value);
    controller.value = value;
  }

  @override
  void didUpdateWidget(ThemedValueBasedFormField<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      _sub?.cancel();
      if (widget.controller != null) {
        _sub = widget.controller.listen(_handleControllerChanged);
        setValue(widget.controller.value);
      }
    }
  }

  @override
  void reset() {
    super.reset();
    controller.value = widget.initialValue;
  }
}
