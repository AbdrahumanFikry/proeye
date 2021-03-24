import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/quick_validator.dart';

class IdentificationCard extends StatelessWidget {
  final String title;
  final String content;
  final String code;

  IdentificationCard({
    @required this.title,
    this.content,
    this.code,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Neumorphic(
            style: NeumorphicStyle(
              color: ColorUtil.backgroundColor,
              boxShape: NeumorphicBoxShape.roundRect(
                AppUtil.borderRadius50,
              ),
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10.0,
            ),
            // padding: const EdgeInsets.all(2.5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: Get.width * 0.285,
                  height: 40.0,
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      color: ColorUtil.primaryColor,
                      boxShape: NeumorphicBoxShape.roundRect(
                        AppUtil.borderRadius50,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 5.0,
                    ),
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          title ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 34.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Expanded(
                  child: SelectableText(
                    content ?? '-',
                    style: TextStyle(
                      color: ColorUtil.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 40.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          code ?? '-',
          style: TextStyle(
            color: ColorUtil.primaryColor,
            fontWeight: FontWeight.w500,
            fontSize: 40.sp,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}
