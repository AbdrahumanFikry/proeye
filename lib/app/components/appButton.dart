import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final double width;
  final Color textColor;
  final String title;
  final double borderRadius;
  final Function onPressed;

  AppButton({
    this.color,
    this.width,
    this.textColor,
    this.title,
    this.onPressed,
    this.borderRadius = 10.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width,
      child: NeumorphicButton(
        margin: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 20.0,
        ),
        onPressed: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          if (onPressed != null) {
            onPressed();
          } else {
            Get.back();
          }
        },
        style: NeumorphicStyle(
          color: color ?? ColorUtil.backgroundColor,
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(
              borderRadius,
            ),
          ),
        ),
        child: Center(
          child: FittedBox(
            child: Text(
              title ?? S.of(context).back,
              style: TextStyle(
                color: color == ColorUtil.primaryColor
                    ? Colors.white
                    : textColor ?? ColorUtil.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 50.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
