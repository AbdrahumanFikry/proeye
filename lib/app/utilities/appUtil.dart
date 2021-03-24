import 'dart:io';
export 'package:pro_eye/app/components/form_fields/_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_picker/flutter_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class AppUtil {
  static final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");
  static final RegExp phoneValidatorRegExp = RegExp(r'^\+?[0-9]{10,}$');
  static BorderRadius borderRadius = BorderRadius.circular(10.0);
  static BorderRadius borderRadius50 = BorderRadius.circular(50);
  static UnderlineInputBorder transparentUnderLineInputBorder =
      UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent,
      width: 0.5,
    ),
  );
  static ThemeData appTheme = ThemeData(
    fontFamily: 'Cairo',
    scaffoldBackgroundColor: ColorUtil.backgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static bool get isLtr => intl.Intl.getCurrentLocale() == 'en';

  static BorderRadius customBorderRadius = isLtr
      ? BorderRadius.only(
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        )
      : BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          topLeft: Radius.circular(10.0),
        );

  static Future chooseDateTime({
    CupertinoDatePickerMode mode = CupertinoDatePickerMode.dateAndTime,
  }) async {
    DateTime result = DateTime.now();
    return await Get.bottomSheet<DateTime>(
      Container(
        height: 500.h,
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: CupertinoDatePicker(
                onDateTimeChanged: (DateTime value) {
                  result = value;
                },
                minimumYear: 1900,
                maximumYear: 2500,
                initialDateTime: DateTime.now(),
                mode: mode,
              ),
            ),
            AppButton(
              title: S.current.done,
              onPressed: () => Get.back(result: result),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  static Future<int> pickDuration([int initialValue]) async {
    final totalDays = initialValue ?? 0;
    final years = totalDays ~/ 365;
    final months = (totalDays % 365) ~/ 30;
    final days = (totalDays % 365) % 30;
    final res = await Picker(
      adapter: NumberPickerAdapter(
        data: <NumberPickerColumn>[
          NumberPickerColumn(
            begin: 0,
            end: 29,
            initValue: years,
            suffix: Text(
              S.current.years,
              style: TextStyle(
                color: ColorUtil.primaryColor,
              ),
            ),
          ),
          NumberPickerColumn(
            begin: 0,
            end: 11,
            initValue: months,
            suffix: Text(
              S.current.months,
              style: TextStyle(
                color: ColorUtil.primaryColor,
              ),
            ),
          ),
          NumberPickerColumn(
            begin: 0,
            end: 29,
            initValue: days,
            suffix: Text(
              S.current.days,
              style: TextStyle(
                color: ColorUtil.primaryColor,
              ),
            ),
          ),
        ],
      ),
      delimiter: <PickerDelimiter>[
        PickerDelimiter(
          child: Container(
            width: 30.0,
            alignment: Alignment.center,
            child: Icon(Icons.more_vert),
          ),
        )
      ],
      hideHeader: true,
      confirmText: S.current.confirm,
      cancelText: S.current.cancel,
      confirmTextStyle: TextStyle(
        inherit: false,
        color: ColorUtil.primaryColor,
        fontSize: 22,
      ),
      cancelTextStyle: TextStyle(
        inherit: false,
        color: Colors.red,
        fontSize: 18,
      ),
      title: Text(
        S.current.selectDuration,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
        ),
      ),
      selectedTextStyle: TextStyle(color: Colors.blue),
    ).showDialog(Get.overlayContext);

    if (res != null) {
      return (res[0] * 365) + (res[1] * 30) + res[2];
    }
    return null;
  }

  static Future<DateTime> pickDate([DateTime initialDate]) async {
    initialDate ??= DateTime.now();
    final date = await showDatePicker(
      context: Get.overlayContext,
      firstDate: DateTime.fromMillisecondsSinceEpoch(0, isUtc: true),
      lastDate: initialDate.add(Duration(days: 20 * 365)),
      initialDate: initialDate ?? DateTime.now(),
    );

    print('Selected date : ' + intl.DateFormat.yMMMMd().format(date));
    if (date != null) {
      return DateTime.utc(date.year, date.month, date.day, 12);
    } else {
      return initialDate;
    }
  }

  static void showAlertSnack({
    String title,
    String body,
    bool isGood = false,
    void Function() onTap,
    Duration duration,
  }) {
    Get.snackbar(
      title,
      body,
      onTap: (_) => onTap?.call(),
      duration: duration,
      backgroundColor: Colors.white,
      titleText: Text(
        title,
        style: TextStyle(
          color: isGood ? Colors.green : Colors.red,
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
        ),
      ),
      messageText: Text(
        body,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 14.0,
        ),
      ),
      icon: Icon(
        isGood ? Icons.check_circle_outline : Icons.error_outline,
        color: isGood ? Colors.green : Colors.red,
      ),
    );
  }

  static Future openMapsSheet({
    double latitude,
    double longitude,
  }) async {
    try {
      final url =
          'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
      if (await canLaunch(url)) {
        await launch(url);
      }
    } catch (e) {
      print(e);
    }
  }

  static Future<void> callPhone({
    List<String> phoneNumbers,
    BuildContext context,
  }) async {
    if (Platform.isIOS) {
      showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(
            actions: <Widget>[
              ...phoneNumbers.map((e) {
                final url = 'tel://$e';
                return CupertinoActionSheetAction(
                  child: Text(
                    e,
                    style: TextStyle(
                      color: ColorUtil.primaryColor,
                    ),
                  ),
                  onPressed: () async {
                    try {
                      if (await canLaunch(url)) {
                        await launch(url);
                      }
                    } catch (e) {
                      print(e.toString());
                    }
                  },
                );
              }).toList(),
            ],
            cancelButton: CupertinoActionSheetAction(
              isDefaultAction: true,
              child: Text(
                S.current.cancel,
              ),
              onPressed: () {
                Get.back(result: true);
              },
            ),
          );
        },
      );
    } else {
      await Get.bottomSheet(
        Container(
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
            ),
          ),
          child: ListView.builder(
            itemCount: phoneNumbers.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final url = 'tel://${phoneNumbers[index]}';
              return ListTile(
                title: Text(
                  phoneNumbers[index],
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                  ),
                ),
                onTap: () async {
                  try {
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  } catch (e) {
                    print(e.toString());
                  }
                },
              );
            },
          ),
        ),
      );
    }
  }

  static Future<bool> showAlertDialog({
    String title,
    String body,
    Function onConfirm,
    String confirmText,
    bool enableCancel = false,
    String cancelText,
    RxBool loading,
  }) async {
    return await Get.defaultDialog<bool>(
      title: S.current.alert ?? title,
      content: AppDirectionality(
        child: Text(
          body ?? '',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
          maxLines: 10,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      titleStyle: TextStyle(
        color: ColorUtil.errorColor,
        fontWeight: FontWeight.w700,
        fontSize: 24.0,
      ),
      actions: [
        if (enableCancel) ...[
          InkWell(
            onTap: () => Get.back(result: false),
            child: Text(
              cancelText ?? S.current.cancel,
              style: TextStyle(
                color: ColorUtil.errorColor,
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
          ),
          const SizedBox(
            width: 75.0,
          ),
        ],
        InkWell(
          onTap: onConfirm ?? () => Get.back(result: true),
          child: Text(
            confirmText ?? S.current.done,
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
