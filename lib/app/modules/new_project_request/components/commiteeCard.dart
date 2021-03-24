import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class CommitteeCard extends StatelessWidget {
  final String committeeName;
  final String chairman;
  final DateTime startDay;
  final DateTime endDate;

  CommitteeCard({
    this.committeeName = 'NULL',
    this.chairman = 'NULL',
    this.startDay,
    this.endDate,
  });

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        color: ColorUtil.backgroundColor,
        boxShape: NeumorphicBoxShape.roundRect(
          AppUtil.borderRadius,
        ),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                S.of(context).committeeName + ' : ',
                style: TextStyle(
                  color: ColorUtil.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 40.sp,
                ),
              ),
              Expanded(
                child: Text(
                  committeeName,
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 40.sp,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Text(
                S.of(context).chairman + ' : ',
                style: TextStyle(
                  color: ColorUtil.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 40.sp,
                ),
              ),
              Expanded(
                child: Text(
                  chairman,
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 40.sp,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (startDay != null)
                Text(
                  DateFormat.yMMMMd().format(startDay),
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 34.sp,
                  ),
                ),
              const SizedBox(
                width: 5.0,
              ),
              if (endDate != null)
                Text(
                  ' - ' + DateFormat.yMMMMd().format(endDate),
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 34.sp,
                  ),
                ),
              const SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.access_time_sharp,
                color: ColorUtil.primaryColor,
                size: 14.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
