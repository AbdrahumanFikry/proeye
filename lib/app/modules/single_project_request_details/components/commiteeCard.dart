import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pro_eye/app/modules/single_project_request_details/controllers/single_project_request_details_controller.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/req_committee_vm.dart';

class SingleCommitteeCard extends StatelessWidget {
  final ReqCommitteeVM committeeViewModel;
  final void Function() onRemove;
  SingleCommitteeCard({
    @required this.committeeViewModel,
    @required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Neumorphic(
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
                      committeeViewModel?.name ?? '',
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
                      committeeViewModel?.committeeDirectorId ?? '',
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
                  if (committeeViewModel?.daysCount != null)
                    Text(
                      (committeeViewModel?.daysCount?.toString() ?? ' 0 ') +
                          ' ${S.current.days} ',
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
        ),
        Positioned(
          top: 0.0,
          left: 10.0,
          child: GestureDetector(
            onTap: onRemove,
            child: Icon(
              Icons.remove_circle,
              color: ColorUtil.errorColor,
              size: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}
