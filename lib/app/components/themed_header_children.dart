import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemedHeaderChildren extends StatelessWidget {
  final String title;
  final Widget child;
  const ThemedHeaderChildren({
    Key key,
    @required this.title,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            title ?? '',
            style: TextStyle(
              color: ColorUtil.primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 60.sp,
            ),
          ),
        ),
        Neumorphic(
          style: NeumorphicStyle(
            depth: -3.0,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(
                25.0,
              ),
            ),
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: child,
        )
      ],
    );
  }
}
