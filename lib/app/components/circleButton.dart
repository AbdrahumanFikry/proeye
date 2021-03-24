import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class CircleButton extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Function onPressed;
  final Color color;

  CircleButton({
    @required this.child,
    this.padding,
    this.color,
    this.onPressed,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      margin: margin,
      padding: padding ?? EdgeInsets.all(10.0),
      onPressed: onPressed,
      style: NeumorphicStyle(
        color: color ?? ColorUtil.backgroundColor,
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.circle(),
      ),
      child: child,
    );
  }
}
