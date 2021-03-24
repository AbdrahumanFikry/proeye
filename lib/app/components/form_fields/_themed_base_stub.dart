import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/waiting.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemedBaseStub extends StatelessWidget {
  final BorderRadius borderRadius;
  final String title;
  final Widget trailing;
  final Widget Function(BuildContext context, Widget neumorphic)
      aboveDataBuilder;
  final Widget child;
  final bool isBusy;
  final Widget errorWidget;
  final bool bigHeader;
  final EdgeInsetsGeometry margin;
  final bool titleAbove;
  const ThemedBaseStub({
    Key key,
    this.borderRadius,
    this.isBusy = false,
    this.trailing,
    @required this.title,
    @required this.child,
    this.aboveDataBuilder,
    this.errorWidget,
    this.titleAbove = false,
    this.bigHeader = false,
    this.margin = const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final children = <Widget>[
      if (title != null) ...[
        SizedBox(
          width: titleAbove ? Get.width : Get.width / 3.5,
          child: Neumorphic(
            style: NeumorphicStyle(
              color: ColorUtil.primaryColor,
              boxShape: titleAbove
                  ? NeumorphicBoxShape.rect()
                  : NeumorphicBoxShape.roundRect(
                      borderRadius ?? AppUtil.borderRadius50,
                    ),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 5.0,
            ),
            child: Center(
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  title,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 42.sp,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
      ],
      Expanded(
        flex: bigHeader ? 1 : 2,
        child: child,
      ),
      if (trailing != null) trailing
    ];

    final neumorphic = Neumorphic(
      style: NeumorphicStyle(
        color: ColorUtil.backgroundColor,
        boxShape: titleAbove
            ? NeumorphicBoxShape.roundRect(
                BorderRadius.only(
                  topLeft: (borderRadius ?? AppUtil.borderRadius50).topLeft,
                  topRight: (borderRadius ?? AppUtil.borderRadius50).topRight,
                ),
              )
            : NeumorphicBoxShape.roundRect(
                borderRadius ?? AppUtil.borderRadius50,
              ),
      ),
      margin: margin,
      padding: const EdgeInsets.all(2.5),
      child: IntrinsicHeight(
        child: titleAbove
            ? Column(
                children: children,
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: children,
              ),
      ),
    );
    final fneumorphic = Waiting(
      child: aboveDataBuilder?.call(context, neumorphic) ?? neumorphic,
      loading: isBusy,
    );

    if (errorWidget == null) {
      return fneumorphic;
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          fneumorphic,
          errorWidget,
        ],
      );
    }
  }
}
