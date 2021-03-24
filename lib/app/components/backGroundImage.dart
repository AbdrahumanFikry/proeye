import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;
  final bool powerredByBlock;

  BackgroundImage({
    this.child,
    this.powerredByBlock = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      color: ColorUtil.backgroundColor,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: Image.asset(
              powerredByBlock
                  ? PathUtil.buildingsPath
                  : PathUtil.oldBuildingsPath,
              width: Get.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned.fill(
            child: child,
          ),
        ],
      ),
    );
  }
}
