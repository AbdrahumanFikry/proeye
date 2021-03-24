import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/modules/user_profile_view.dart';
import 'package:pro_eye/app/services/repos/user_repo.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';

class AppDrawerHeader extends StatelessWidget {
  final void Function() onClick;

  const AppDrawerHeader({Key key, this.onClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50.0,
        bottom: 30.0,
      ),
      child: Obx(
        () {
          var currentUser = UserService.to.currentUser.value;
          if (currentUser == null) return SizedBox.shrink();
          return GestureDetector(
            onTap: () {
              onClick?.call();
              return Get.to(
                () => UserProfileView(UserRepo.mapFromUserInfo(currentUser)),
              );
            },
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Neumorphic(
                    style: NeumorphicStyle(
                      depth: -5.0,
                      color: ColorUtil.backgroundColor,
                      boxShape: NeumorphicBoxShape.circle(),
                    ),
                    //padding: const EdgeInsets.all(2.0),
                    child: currentUser?.photoUrl != null
                        ? CachedNetworkImage(
                            imageUrl: currentUser.photoUrl,
                            fit: BoxFit.cover,
                            width: Get.width / 3,
                            height: Get.width / 3,
                          )
                        : Icon(
                            FontAwesomeIcons.user,
                            color: ColorUtil.primaryColor,
                            size: 60.0,
                          ),
                  ),
                  Text(
                    currentUser.nameAr ?? '',
                    style: TextStyle(
                      color: ColorUtil.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 46.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    currentUser.id ?? '',
                    style: TextStyle(
                      color: ColorUtil.primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 40.sp,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
