import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_themed_value_based_form_field.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class ThemedDropDownFormField<T> extends ThemedValueBasedFormField<T> {
  ThemedDropDownFormField({
    Key key,
    bool enabled = true,
    String title,
    Rx<T> controller,
    Iterable<T> items,
    bool isRequired,
    String hintText,
    String Function(T selectedValue) selectedDisplayFunc,
    @required String Function(T listValue) listDisplayFunc,
    Widget suffixWidget,
    Widget trailing,
    AutovalidateMode autovalidateMode,
    String Function(T date) extraValidator,
    void Function(T selectedValue) onSaved,
    void Function(T selectedValue) onChanged,
    bool bigHeader,
    bool isBusy = false,
  }) : super(
          key: key,
          trailing: trailing,
          selectedDisplayFunc: selectedDisplayFunc ?? listDisplayFunc,
          enabled: enabled,
          autovalidateMode: autovalidateMode,
          controller: controller,
          extraValidator: extraValidator,
          isRequired: isRequired,
          isBusy: isBusy,
          childMargin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
          onSaved: onSaved,
          title: title,
          childBuilder: (state) {
            return Neumorphic(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              padding: const EdgeInsets.symmetric(
                horizontal: 0.0,
              ),
              style: NeumorphicStyle(
                depth: 0,
                color: ColorUtil.backgroundColor,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(50),
                ),
              ),
              child: SizedBox(
                height: 36,
                width: Get.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (suffixWidget != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15.0,
                          vertical: 0,
                        ),
                        child: suffixWidget,
                      ),
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<T>(
                          value: state.value,
                          isDense: true,
                          selectedItemBuilder: selectedDisplayFunc == null
                              ? null
                              : (context) {
                                  return items.map<Widget>(
                                    (T value) {
                                      return Text(
                                        selectedDisplayFunc(value),
                                        style: TextStyle(
                                          color: ColorUtil.primaryColor,
                                        ),
                                        textAlign: TextAlign.center,
                                      );
                                    },
                                  ).toList();
                                },
                          onChanged: !enabled
                              ? null
                              : (newVal) {
                                  FocusScope.of(state.context)
                                      .requestFocus(new FocusNode());
                                  onChanged?.call(newVal);
                                  state.didChange(newVal);
                                },
                          isExpanded: true,
                          hint: Text(
                            !enabled ? ' ' : (hintText ?? ''),
                            style: TextStyle(
                              color: ColorUtil.greyColor,
                            ),
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                          iconDisabledColor: Colors.grey,
                          iconEnabledColor: Colors.grey,
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: ColorUtil.primaryColor,
                          ),
                          items: items.map(
                            (T value) {
                              return DropdownMenuItem<T>(
                                value: value,
                                child: Text(
                                  listDisplayFunc(value),
                                  style: TextStyle(
                                    color: ColorUtil.primaryColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );

  @override
  ThemedValueBasedFormFieldState<T> createState() =>
      ThemedValueBasedFormFieldState<T>();
}
