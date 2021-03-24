import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pro_eye/app/components/GlobalCard.dart';
import 'package:pro_eye/app/components/animatedListHandler.dart';
import 'package:pro_eye/app/components/appButton.dart';
import 'package:pro_eye/app/components/circleButton.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/components/loading.dart';
import 'package:pro_eye/app/components/proccessColors.dart';
import 'package:pro_eye/app/modules/create_or_update_task/controllers/create_or_update_task_route_parameters.dart';
import 'package:pro_eye/app/modules/single_task/dialogs/add_comment_dialog.dart';
import 'package:pro_eye/app/modules/single_task/dialogs/complete_task_dialog.dart';
import 'package:pro_eye/app/modules/single_task/dialogs/remove_task_dialog.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:proeye_api/model/self_or_other_enum.dart';
import '../controllers/single_task_controller.dart';

class SingleTaskView extends GetView<SingleTaskController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final task = controller.taskDetails.value;
        final comments = task?.comments?.toList();
        if (comments != null) {
          comments.sort((x, y) => y.issuedAt.compareTo(x.issuedAt));
        }
        return GlobalScaffold(
          appBar: GlobalAppBar(
            title: S.current.taskDetails,
            enableBack: true,
            attachments: task?.files,
          ),
          floatingActionButton: controller.isBusy.value
              ? null
              : FloatingActionButton.extended(
                  onPressed: () async {
                    if (await AddCommentDialog(controller.params).show()) {
                      await controller.getTaskDetails();
                    }
                  },
                  backgroundColor: ColorUtil.primaryColor,
                  tooltip: S.of(context).addNewComment,
                  icon: Icon(
                    Icons.chat_bubble_rounded,
                    color: Colors.white,
                  ),
                  label: Text(
                    S.of(context).addNewComment,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
          body: task == null || controller.isBusy.value
              ? Loading()
              : AnimatedListHandler(
                  onRefresh: controller.getTaskDetails,
                  children: [
                    if (task != null && task.colorInfo != null)
                      Container(
                        height: 40,
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: HexColor.fromRGB(task.colorInfo.colorValue),
                        ),
                      ),
                    ThemedDataViewer(
                      title: S.of(context).title,
                      content: task.title,
                    ),
                    if (task.plannedStart != null)
                      ThemedDataViewer(
                        title: S.of(context).plannedStartDate,
                        content: task.plannedStart.toShortUserString(),
                      ),
                    if (task.plannedEnd != null)
                      ThemedDataViewer(
                        title: S.of(context).plannedEndDate,
                        content: task.plannedEnd.toShortUserString(),
                      ),
                    ThemedDataViewer(
                      title: 'حالة المهمة',
                      content:
                          task.actualEnd == null ? 'جارى التنفيذ' : 'منتهية',
                    ),
                    if (task.actualEnd != null)
                      ThemedDataViewer(
                        title: S.of(context).actualEndDate,
                        content: task.actualEnd.toShortUserString(),
                      ),
                    if (task.notes != null)
                      ThemedDataViewer(
                        title: S.of(context).notes,
                        content: task.notes,
                      ),
                    if (controller.canDoActions)
                      Row(
                        children: [
                          if (!controller.taskDetails.value.isReceiveTask)
                            AppButton(
                              title: 'تعديل المهمة',
                              borderRadius: 50.0,
                              color: ColorUtil.primaryColor,
                              width: Get.width / 2,
                              onPressed: () async {
                                if (task.taskId != null) {
                                  final res = await Get.toNamed(
                                    Routes.CREATE_OR_UPDATE_TASK,
                                    arguments:
                                        CreateOrUpdateTaskRouteParameters(
                                      projectId: controller.projectId,
                                      committeeId: controller.committeeId,
                                      committeeStartDate: controller
                                          .params.committee.value.plannedStart,
                                      taskDetails: controller.taskDetails.value,
                                      teamId: controller.params.teamId,
                                      taskId: controller.params.taskId,
                                    ),
                                  ) as bool;
                                  if (res == true) {
                                    await controller.getTaskDetails();
                                  }
                                }
                              },
                            ),
                          if (!controller.taskDetails.value.isReceiveTask)
                            AppButton(
                              title: 'حذف المهمة',
                              borderRadius: 50.0,
                              color: ColorUtil.errorColor,
                              textColor: Colors.white,
                              width: Get.width / 2,
                              onPressed: () async {
                                if (task.taskId != null) {
                                  if (await RemoveTaskDialog(controller.params)
                                      .show()) {
                                    Get.back();
                                  }
                                }
                              },
                            ),
                        ],
                      ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        S.of(context).allComments,
                        style: TextStyle(
                          color: ColorUtil.primaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 60.sp,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    if (comments != null)
                      Neumorphic(
                        style: NeumorphicStyle(
                          depth: -3.0,
                          boxShape: NeumorphicBoxShape.roundRect(
                            AppUtil.borderRadius,
                          ),
                        ),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        padding: const EdgeInsets.all(10.0),
                        child: AnimatedListHandler(
                          noScroll: true,
                          shrinkWrap: true,
                          children: comments
                              .map<Widget>(
                                (c) => GlobalCard(
                                  onTap: () {},
                                  borderRadius: AppUtil.borderRadius,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                    vertical: 5.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        c.selfOrOther == SelfOrOtherEnum.self
                                            ? 'انت'
                                            : c?.commenter?.nameAr ??
                                                c?.commenter?.id,
                                        style: TextStyle(
                                          color: ColorUtil.primaryColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 34.sp,
                                        ),
                                      ),
                                      Text(
                                        c.comment,
                                        style: TextStyle(
                                          color: ColorUtil.primaryColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 46.sp,
                                        ),
                                      ),
                                      if (c.issuedAt != null)
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              c.issuedAt.toLongUserString(),
                                              style: TextStyle(
                                                color: ColorUtil.primaryColor,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 26.sp,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5.0,
                                            ),
                                            Icon(
                                              Icons.access_time_sharp,
                                              color: ColorUtil.primaryColor,
                                              size: 12.0,
                                            ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    if (controller.canDoActions)
                      controller.isBusy.value
                          ? Loading()
                          : AppButton(
                              title: 'إكمال المهمه',
                              borderRadius: 50.0,
                              color: ColorUtil.primaryColor,
                              width: Get.width,
                              onPressed: () async {
                                if (task.taskId != null) {
                                  if (await CompleteTaskDialog(
                                          controller.params)
                                      .show()) {
                                    await controller.getTaskDetails();
                                  }
                                }
                              },
                            ),
                    SizedBox(
                      height: 75.0,
                    ),
                  ],
                ),
        );
      },
    );
  }
}
