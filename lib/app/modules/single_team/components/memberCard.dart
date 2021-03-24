import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/modules/user_profile_view.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/user_view_model.dart';

class MemberCard extends StatelessWidget {
  final UserViewModel person;
  final void Function() onDelete;
  MemberCard(this.person, this.onDelete);

  @override
  Widget build(BuildContext context) {
    return GlobalCard(
      onTap: () {
        if (person?.id != null) {
          Get.to(
            () => UserProfileView(person),
          );
        }
      },
      child: Row(
        children: [
          person?.photoUrl == null
              ? Image.asset(
                  PathUtil.appIconPath,
                  width: 75.0,
                  height: 75.0,
                  fit: BoxFit.contain,
                )
              : Image.network(
                  person?.photoUrl,
                  width: 75.0,
                  height: 75.0,
                  fit: BoxFit.cover,
                ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  person?.nameAr ?? S.of(context).name,
                  style: TextStyle(
                    color: ColorUtil.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 60.sp,
                  ),
                ),
                if (person?.jobDesc != null)
                  Text(
                    person?.jobDesc ?? ' - ',
                    style: TextStyle(
                      color: ColorUtil.primaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 34.sp,
                    ),
                  ),
              ],
            ),
          ),
          if (onDelete != null)
            IconButton(
              icon: Icon(
                Icons.delete,
                color: ColorUtil.errorColor,
              ),
              onPressed: onDelete,
            ),
        ],
      ),
    );
  }
}
