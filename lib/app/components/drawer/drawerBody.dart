import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/drawer/drawerHeader.dart';
import 'package:pro_eye/app/components/drawer/drawerItem.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/services/appService.dart';
import 'package:pro_eye/app/services/repos/_cache_service.dart';
import 'package:pro_eye/app/services/user_service.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/app/utilities/pathUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class DrawerBody extends StatelessWidget {
  final GlobalKey<InnerDrawerState> innerDrawerKey;
  final isLoggingOut = false.obs;

  DrawerBody({
    this.innerDrawerKey,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Neumorphic(
        style: NeumorphicStyle(
          color: ColorUtil.backgroundColor,
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.zero,
          ),
        ),
        margin: const EdgeInsets.all(1.0),
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 15.0,
        ),
        child: Column(
          children: [
            AppDrawerHeader(
              onClick: () {
                innerDrawerKey.currentState.close(
                  direction: InnerDrawerDirection.start,
                );
              },
            ),
            Obx(
              () {
                var user = UserService.to.currentUser.value;
                if (user == null) return SizedBox.shrink();

                return Expanded(
                  child: AnimatedListHandler(
                    children: [
                      if (user.userRole != UserRolesEnum.SystemAdmin)
                        AppDrawerItem(
                          title: S.of(context).projects,
                          iconPath: PathUtil.projectsPathSVG,
                          onTab: () {
                            innerDrawerKey.currentState.close(
                              direction: InnerDrawerDirection.start,
                            );
                            Get.toNamed(Routes.PROJECTS);
                          },
                        ),
                      if (user.userRole ==
                              UserRolesEnum.EngManagementDirector ||
                          user.userRole == UserRolesEnum.ExecutiveManager)
                        AppDrawerItem(
                          title: S.of(context).projectsRequests,
                          iconPath: PathUtil.projectsRequestsPath,
                          onTab: () {
                            innerDrawerKey.currentState.close(
                              direction: InnerDrawerDirection.start,
                            );
                            Get.toNamed(Routes.PROJECTS_REQUEST);
                          },
                        ),
                      // AppDrawerItem(
                      //   title: S.of(context).technicalReports,
                      //   iconPath: PathUtil.reportsPathSVG,
                      //   onTab: () {
                      //     innerDrawerKey.currentState.close(
                      //       direction: InnerDrawerDirection.start,
                      //     );
                      //     Get.toNamed(Routes.TECHNICAL_REPORTS);
                      //   },
                      // ),
                      // AppDrawerItem(
                      //   title: S.of(context).financial,
                      //   iconPath: PathUtil.projectsPathSVG,
                      //   onTab: () {
                      //     innerDrawerKey.currentState.close(
                      //       direction: InnerDrawerDirection.start,
                      //     );
                      //     Get.toNamed(Routes.FINANCIAL);
                      //   },
                      // ),
                      if (user.userRole != UserRolesEnum.NormalUser)
                        AppDrawerItem(
                          title: S.of(context).analytics,
                          iconPath: PathUtil.analysisPathSVG,
                          onTab: () {
                            Get.toNamed(Routes.ANALYSIS);
                          },
                        ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      if (!isLoggingOut.value)
                        AppDrawerItem(
                          title: S.of(context).signOut,
                          iconPath: PathUtil.signingPath,
                          onTab: () async {
                            try {
                              await AppService.to.removeToken();
                              await CacheService.to.userRepo.clear();
                            } catch (e) {}
                            Get.offAllNamed(Routes.AUTH);
                          },
                        )
                      else
                        Loading()
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
