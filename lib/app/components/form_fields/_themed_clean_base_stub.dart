  import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:pro_eye/app/components/waiting.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemedCleanBaseStub extends StatelessWidget {
  final BorderRadius borderRadius;
  final Widget suffixWidget;
  final Widget Function(BuildContext context, Widget neumorphic)
      aboveDataBuilder;
  final Widget child;
  final bool isBusy;
  final Widget errorWidget;
  final EdgeInsets margin;

  const ThemedCleanBaseStub({
    Key key,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.isBusy,
    @required this.child,
    this.aboveDataBuilder,
    this.errorWidget,
    this.suffixWidget,
    this.margin = const EdgeInsets.symmetric(
      horizontal: 20.0,
      vertical: 10.0,
    ),
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final neumorphic = Neumorphic(
      style: NeumorphicStyle(
        depth: -3.0,
        boxShape: NeumorphicBoxShape.roundRect(
          borderRadius,
        ),
      ),
      margin: margin,
      padding: const EdgeInsets.all(2.5),
      child: Row(
        textDirection: AppUtil.isLtr ? TextDirection.ltr : TextDirection.rtl,
        children: [
          if (suffixWidget != null)
            Container(
              width: 50.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 5.0,
              ),
              child: suffixWidget,
            ),
          Expanded(
            child: child,
          ),
        ],
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
