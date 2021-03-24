import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/form_fields/_themed_clean_base_stub.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemedTextFormField extends FormField<String> {
  final TextEditingController controller;

  static TextField _generateCleanChildTextField({
    bool enabled,
    _ThemedTextFormFieldState state,
    void onChangedHandler(String value),
    bool readOnly,
    TextInputType keyBoardType,
    int maxLines,
    String hintText,
    double fontSize,
    bool englishText,
    TextAlign textAlignment = TextAlign.center,
    bool hidePassword,
    bool isPassword,
    void Function() changeObscuring,
    void onFieldSubmitted(String textValue),
  }) {
    return TextField(
      enabled: enabled,
      controller: state._effectiveController,
      onChanged: onChangedHandler,
      readOnly: readOnly,
      onSubmitted: onFieldSubmitted,
      style: TextStyle(
        color: ColorUtil.primaryColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
      ),
      textDirection: englishText ? TextDirection.ltr : TextDirection.rtl,
      textAlign: textAlignment,
      textInputAction: TextInputAction.done,
      cursorColor: ColorUtil.primaryColor,
      keyboardType: keyBoardType,
      maxLines: maxLines,
      obscureText: hidePassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        suffix: isPassword
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onTap: changeObscuring,
                  child: Icon(
                    !hidePassword
                        ? FontAwesomeIcons.eyeSlash
                        : FontAwesomeIcons.eye,
                    size: 16.0,
                    color: ColorUtil.secondaryColor,
                  ),
                ),
              )
            : null,
        alignLabelWithHint: true,
        border: AppUtil.transparentUnderLineInputBorder,
        focusedBorder: AppUtil.transparentUnderLineInputBorder,
        disabledBorder: AppUtil.transparentUnderLineInputBorder,
        enabledBorder: AppUtil.transparentUnderLineInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorUtil.greyColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  ThemedTextFormField.clean({
    Key key,
    bool readOnly = false,
    bool enabled,
    Widget suffixWidget,
    String initialValue,
    AutovalidateMode autovalidateMode,
    double borderRadius,
    String validator(String textValue),
    ValueChanged<String> onChanged,
    void onFieldSubmitted(String textValue),
    void onSaved(String textValue),
    void changeObscuring(),
    TextInputType keyBoardType,
    int maxLines = 1,
    String hintText,
    double fontSize = 16,
    this.controller,
    bool isBusy = false,
    bool englishText = false,
    bool hidePassword = false,
    bool isPassword = false,
    TextAlign textAlignment = TextAlign.center,
  }) : super(
          initialValue:
              controller != null ? controller.text : (initialValue ?? ''),
          key: key,
          builder: (field) {
            final _ThemedTextFormFieldState state =
                field as _ThemedTextFormFieldState;
            void onChangedHandler(String value) {
              if (onChanged != null) {
                onChanged(value);
              }
              field.didChange(value);
            }

            final childTextField = _generateCleanChildTextField(
              enabled: enabled,
              state: state,
              onChangedHandler: onChangedHandler,
              readOnly: readOnly,
              keyBoardType: keyBoardType,
              maxLines: maxLines,
              hintText: hintText,
              fontSize: fontSize,
              textAlignment: textAlignment,
              changeObscuring: changeObscuring,
              englishText: englishText,
              hidePassword: hidePassword,
              onFieldSubmitted: onFieldSubmitted,
              isPassword: isPassword,
            );
            final errorWidget =
                state.hasError ? ThemedErrorWidget(state.errorText) : null;
            return ThemedCleanBaseStub(
              suffixWidget: suffixWidget,
              isBusy: isBusy,
              borderRadius: BorderRadius.circular(borderRadius),
              errorWidget: errorWidget,
              child: childTextField,
            );
          },
          autovalidateMode: autovalidateMode,
          onSaved: onSaved,
          enabled: readOnly,
          validator: validator,
        );

  ThemedTextFormField({
    Key key,
    bool readOnly = false,
    bool enabled,
    String title,
    String initialValue,
    AutovalidateMode autovalidateMode,
    BorderRadius borderRadius,
    String Function(String textValue) validator,
    ValueChanged<String> onChanged,
    void Function(String textValue) onSaved,
    TextInputType keyBoardType,
    int maxLines = 1,
    String hintText,
    bool englishText = false,
    this.controller,
    bool isBusy = false,
  }) : super(
          initialValue:
              controller != null ? controller.text : (initialValue ?? ''),
          key: key,
          builder: (field) {
            final _ThemedTextFormFieldState state =
                field as _ThemedTextFormFieldState;
            void onChangedHandler(String value) {
              if (onChanged != null) {
                onChanged(value);
              }
              field.didChange(value);
            }

            final childTextField = _generateChildTextField(
              enabled: enabled,
              state: state,
              onChangedHandler: onChangedHandler,
              readOnly: readOnly,
              keyBoardType: keyBoardType,
              maxLines: maxLines,
              englishText: englishText,
              hintText: hintText,
            );
            final errorWidget =
                state.hasError ? ThemedErrorWidget(state.errorText) : null;
            return ThemedBaseStub(
              title: title,
              isBusy: isBusy,
              borderRadius: borderRadius,
              errorWidget: errorWidget,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: maxLines == 1
                  ? childTextField
                  : Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                      child: childTextField,
                    ),
            );
          },
          autovalidateMode: autovalidateMode,
          onSaved: onSaved,
          enabled: readOnly,
          validator: validator,
        );

  static TextField _generateChildTextField({
    bool enabled,
    _ThemedTextFormFieldState state,
    void onChangedHandler(String value),
    bool readOnly,
    TextInputType keyBoardType,
    int maxLines,
    bool englishText = false,
    String hintText,
  }) {
    return TextField(
      enabled: enabled,
      controller: state._effectiveController,
      onChanged: onChangedHandler,
      readOnly: readOnly,
      textDirection: englishText ? TextDirection.ltr : TextDirection.rtl,
      style: TextStyle(
        color: Colors.black,
        fontSize: 34.sp,
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
      textInputAction: TextInputAction.done,
      cursorColor: ColorUtil.primaryColor,
      keyboardType: keyBoardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        alignLabelWithHint: true,
        border: AppUtil.transparentUnderLineInputBorder,
        focusedBorder: AppUtil.transparentUnderLineInputBorder,
        disabledBorder: AppUtil.transparentUnderLineInputBorder,
        enabledBorder: AppUtil.transparentUnderLineInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(
          color: ColorUtil.greyColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  _ThemedTextFormFieldState createState() => _ThemedTextFormFieldState();
}

class _ThemedTextFormFieldState extends FormFieldState<String> {
  TextEditingController _controller;

  TextEditingController get _effectiveController =>
      widget.controller ?? _controller;

  @override
  ThemedTextFormField get widget => super.widget as ThemedTextFormField;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _controller = TextEditingController(text: widget.initialValue);
    } else {
      widget.controller.addListener(_handleControllerChanged);
    }
  }

  @override
  void didUpdateWidget(ThemedTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      oldWidget.controller?.removeListener(_handleControllerChanged);
      widget.controller?.addListener(_handleControllerChanged);

      if (oldWidget.controller != null && widget.controller == null)
        _controller =
            TextEditingController.fromValue(oldWidget.controller.value);
      if (widget.controller != null) {
        setValue(widget.controller.text);
        if (oldWidget.controller == null) _controller = null;
      }
    }
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_handleControllerChanged);
    super.dispose();
  }

  @override
  void didChange(String value) {
    super.didChange(value);

    if (_effectiveController.text != value) _effectiveController.text = value;
  }

  @override
  void reset() {
    super.reset();
    setState(() {
      _effectiveController.text = widget.initialValue;
    });
  }

  void _handleControllerChanged() {
    // Suppress changes that originated from within this class.
    //
    // In the case where a controller has been passed in to this widget, we
    // register this change listener. In these cases, we'll also receive change
    // notifications for changes originating from within this class -- for
    // example, the reset() method. In such cases, the FormField value will
    // already have been set.
    if (_effectiveController.text != value)
      didChange(_effectiveController.text);
  }
}
