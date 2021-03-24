import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemedDataViewer extends StatelessWidget {
  final String title;
  final String content;
  final bool selectable;
  final int maxLines;
  final BorderRadius borderRadius;
  final Widget trailing;
  final EdgeInsetsGeometry margin;
  final void Function() onTap;
  final TextAlign alignment;
  const ThemedDataViewer(
      {Key key,
      this.onTap,
      this.trailing,
      this.margin = const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      this.borderRadius,
      this.title,
      this.content,
      this.selectable = true,
      this.maxLines,
      this.alignment = TextAlign.center})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      color: ColorUtil.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize: 40.sp,
    );
    var lines = content?.split('\n')?.length ?? 0;
    return ThemedBaseStub(
      title: title,
      borderRadius: borderRadius,
      trailing: trailing,
      isBusy: false,
      margin: margin,
      titleAbove: lines > 3,
      aboveDataBuilder: onTap == null
          ? null
          : (context, child) {
              return GestureDetector(
                onTap: onTap,
                child: child,
              );
            },
      child: selectable && content != null
          ? SelectableText(
              content,
              style: style,
              maxLines: maxLines,
              textAlign: alignment,
            )
          : Text(
              content ?? '-',
              maxLines: maxLines,
              style: style,
              textAlign: alignment,
            ),
    );
  }
}
