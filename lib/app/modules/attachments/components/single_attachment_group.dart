import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<Widget> singleAttachmentGroup({
  @required String title,
  void Function() onReset,
  @required Widget Function(BuildContext, int index) widgetBuilder,
  @required int count,
}) {
  return [
    if (title != null)
      SliverToBoxAdapter(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 30.0, right: 30, top: 10, bottom: 5),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 60.sp,
                  ),
                ),
              ),
              if (onReset != null)
                IconButton(
                  icon: Icon(
                    Icons.settings_backup_restore_outlined,
                    color: ColorUtil.errorColor,
                  ),
                  onPressed: onReset,
                )
            ],
          ),
        ),
      ),
    SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      delegate: SliverChildBuilderDelegate(
        widgetBuilder,
        childCount: count,
      ),
    ),
  ];
}
