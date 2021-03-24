import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class AppDrawerItem extends StatelessWidget {
  final Function onTab;
  final String iconPath;
  final String title;
  final Widget trailing;

  AppDrawerItem({
    @required this.title,
    @required this.iconPath,
    this.trailing,
    @required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 7.5,
          horizontal: 5.0,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        color: Colors.transparent,
        child: Row(
          children: [
            Neumorphic(
              style: NeumorphicStyle(
                color: ColorUtil.backgroundColor,
                boxShape: NeumorphicBoxShape.circle(),
              ),
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: iconPath.contains('svg')
                    ? SvgPicture.asset(
                        iconPath ?? '',
                        color: ColorUtil.primaryColor,
                        fit: BoxFit.cover,
                        height: 60.sp,
                        width: 60.sp,
                      )
                    : Image.asset(
                        iconPath ?? '',
                        color: ColorUtil.primaryColor,
                        fit: BoxFit.cover,
                        height: 60.sp,
                        width: 60.sp,
                      ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Text(
                title ?? '',
                style: TextStyle(
                  color: ColorUtil.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.sp,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            if (trailing != null) trailing
          ],
        ),
      ),
    );
  }
}
