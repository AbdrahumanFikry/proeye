import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appDirectionality.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/modules/projects_requests/components/requestCard.dart';
import 'package:pro_eye/app/modules/projects_requests/controllers/projects_requests_controller.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';

class ProjectsRequestsView extends GetView<ProjectsRequestsController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: GlobalAppBar(
        title: S.of(context).projectsRequests,
        enableBack: true,
      ),
      body: Obx(
        () => AnimatedListHandler(
          refreshIndicatorKey: controller.refreshKey,
          onRefresh: () async {
            await controller.fetchProjectsRequests();
          },
          children: [
            ...controller.projectsRequest
                .map<Widget>(
                  (request) => RequestCard(
                    request,
                    () => controller.refreshKey.currentState?.show(),
                  ),
                )
                .toList(),
            SizedBox(
              height: Get.height / 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10.0,
        tooltip: S.of(context).newProjectRequest,
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () async {
          final res = await Get.toNamed(Routes.NEW_PROJECT_REQUEST);
          if (res != null) {
            await controller.fetchProjectsRequests();
          }
        },
        backgroundColor: ColorUtil.primaryColor,
        label: Text(
          S.of(context).newProjectRequest,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
