import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/emptyWidget.dart';

class MultiData extends StatelessWidget {
  final List<Widget> data;

  const MultiData(
    this.data,
  );

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
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
      padding: const EdgeInsets.only(
        top: 60.0,
        bottom: 10.0,
      ),
      child: AnimatedListHandler(
        shrinkWrap: true,
        noScroll: true,
        children: data,
      ),
    );
  }
}
