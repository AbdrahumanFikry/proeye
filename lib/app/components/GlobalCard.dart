import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class GlobalCard extends StatelessWidget {
  final Widget child;
  final Function onTap;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final bool isBg;
  GlobalCard({
    @required this.child,
    @required this.onTap,
    this.borderRadius,
    this.margin,
    this.padding = const EdgeInsets.symmetric(
      vertical: 7.5,
      horizontal: 15.0,
    ),
    this.isBg = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Neumorphic(
        style: isBg
            ? NeumorphicStyle(
                depth: -3.0,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(
                    25.0,
                  ),
                ),
              )
            : NeumorphicStyle(
                color: ColorUtil.backgroundColor,
                boxShape: NeumorphicBoxShape.roundRect(
                  borderRadius ?? AppUtil.customBorderRadius,
                ),
              ),
        margin: margin ??
            EdgeInsets.only(
              right: AppUtil.isLtr ? 20.0 : 0.0,
              left: AppUtil.isLtr ? 0.0 : 20.0,
              top: 10.0,
              bottom: 10.0,
            ),
        padding: padding,
        child: child,
      ),
    );
  }
}
