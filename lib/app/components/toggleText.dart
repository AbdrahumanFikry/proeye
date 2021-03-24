import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class ToggleText extends StatelessWidget {
  final String title;
  final bool foreground;

  ToggleText({
    this.title,
    this.foreground = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FittedBox(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 42.sp,
            fontWeight: foreground ? FontWeight.w600 : FontWeight.w500,
            color: foreground ? Colors.white : ColorUtil.primaryColor,
          ),
        ),
      ),
    );
  }
}
