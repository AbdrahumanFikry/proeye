import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:shimmer/shimmer.dart';

class Waiting extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final BorderRadius borderRadius;
  final EdgeInsets margin;
  final bool loading;

  Waiting({
    @required this.child,
    this.width,
    this.height,
    this.margin = const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    this.borderRadius,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (loading == false) {
      return child;
    } else {
      return Stack(
        children: [
          child,
          Positioned.fill(
            left: margin.left,
            bottom: margin.bottom,
            right: margin.right,
            top: margin.top,
            child: Shimmer.fromColors(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: borderRadius ?? AppUtil.borderRadius50,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              baseColor: Colors.transparent,
              highlightColor: Colors.white,
              enabled: true,
            ),
          ),
        ],
      );
    }
  }
}
