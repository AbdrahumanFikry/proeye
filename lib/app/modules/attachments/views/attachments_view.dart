import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/emptyWidget.dart';
import 'package:pro_eye/app/components/globalAppBar.dart';
import 'package:pro_eye/app/components/global_scaffold.dart';
import 'package:pro_eye/app/modules/attachments/controllers/attachments_controller.dart';
import 'package:pro_eye/app/utilities/colorUtil.dart';
import 'package:pro_eye/generated/l10n.dart';
import '../components/preview_attachment_widget.dart';
import '../components/single_attachment_group.dart';

class AttachmentsView extends GetView<AttachmentsController> {
  @override
  Widget build(BuildContext context) {
    return GlobalScaffold(
      appBar: Obx(
        () => ThemedGlobalAppBar(
          title: S.of(context).attachments,
          enableBack: true,
          actions: [
            if (controller.params.controller.value.changesCount > 0)
              IconButton(
                tooltip: 'استعادة',
                icon: Icon(
                  Icons.settings_backup_restore_outlined,
                  color: ColorUtil.primaryColor,
                ),
                onPressed: () {
                  controller.params.controller.value =
                      controller.params.controller.value.resetAll();
                },
              ),
            if (controller.params.controller.value.changesCount > 0)
              IconButton(
                tooltip: 'تم',
                icon: Icon(
                  Icons.check_circle,
                  color: Colors.green[900],
                ),
                onPressed: () {
                  Get.back();
                },
              ),
          ],
        ),
      ),
      floatingActionButton: controller.params.enabled
          ? FloatingActionButton.extended(
              backgroundColor: ColorUtil.primaryColor,
              label: Text('رفع ملفات'),
              icon: Icon(Icons.file_upload),
              onPressed: () {
                controller.pickFiles();
              },
            )
          : null,
      body: Obx(
        () {
          final params = controller.params;
          final isEnabled = controller.params.enabled;
          final curState = controller.params.controller;
          final stateVal = curState.value;
          if (curState == null ||
              stateVal == null ||
              stateVal.existingCount == 0 && stateVal.toRemove.length == 0) {
            return EmptyWidget();
          }
          //show 3 groups
          List<Widget> existingWidget;
          List<Widget> toRemoveWidget;
          List<Widget> toUploadWidget;
          if (stateVal.existingFiles.length > 0) {
            existingWidget = singleAttachmentGroup(
              title: isEnabled ? 'الملفات الموجودة مسبقا' : null,
              count: stateVal.existingFiles.length,
              widgetBuilder: (context, index) {
                final file = stateVal.existingFiles[index];
                return PreviewAttachmentWidget(
                  url: file.fullUrl,
                  isLocal: false,
                  onDelete: params.canDeleteOld
                      ? () {
                          curState.value = stateVal.removeFile(file);
                        }
                      : null,
                );
              },
            );
          }
          if (params.canDeleteOld &&
              isEnabled &&
              stateVal.toRemove.length > 0) {
            toRemoveWidget = singleAttachmentGroup(
              title: 'ملفات سيتم حذفها',
              count: stateVal.toRemove.length,
              widgetBuilder: (context, index) {
                final file = stateVal.toRemove[index];
                return PreviewAttachmentWidget(
                  url: file.fullUrl,
                  isLocal: false,
                  onDelete: () {
                    curState.value = stateVal.addFileBack(file);
                  },
                );
              },
            );
          }
          if (isEnabled && stateVal.toUpload.length > 0) {
            toUploadWidget = singleAttachmentGroup(
              count: stateVal.toUpload.length,
              title: 'ملفات سيتم رفعها',
              widgetBuilder: (context, index) {
                final file = stateVal.toUpload[index];
                return PreviewAttachmentWidget(
                  url: file,
                  isLocal: true,
                  onDelete: () {
                    curState.value = stateVal.removeUploadFile(file);
                  },
                );
              },
            );
          }
          return CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              if (toUploadWidget != null) ...toUploadWidget,
              if (toRemoveWidget != null) ...toRemoveWidget,
              if (existingWidget != null) ...existingWidget,
              SliverToBoxAdapter(
                child: SizedBox(
                  height: Get.height / 10,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
