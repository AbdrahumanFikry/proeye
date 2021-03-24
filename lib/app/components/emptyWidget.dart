import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class EmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Lottie.asset(
              PathUtil.emptyLottiePath,
            ),
          ),
          Text(
            S.of(context).thisEmpty,
            style: TextStyle(
              color: ColorUtil.greyColor,
              fontWeight: FontWeight.w800,
              fontSize: 56.sp,
            ),
          ),
        ],
      ),
    );
  }
}
