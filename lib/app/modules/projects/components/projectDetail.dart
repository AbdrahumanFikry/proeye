import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class ProjectDetail extends StatelessWidget {
  final String title;
  final String content;
  final double width;

  ProjectDetail({
    @required this.title,
    this.content = '',
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width * 0.5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title + ' :  ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 34.sp,
            ),
          ),
          Expanded(
            child: Text(
              content ?? '',
              style: TextStyle(
                color: ColorUtil.primaryColor,
                fontWeight: FontWeight.w800,
                fontSize: 34.sp,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
