import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/mixins/api_mixin.dart';
import 'package:pro_eye/app/components/mixins/busy_mixin.dart';
import 'package:pro_eye/app/components/mixins/upload_files_controller_mixin.dart';
import 'package:proeye_api/model/technical_report_vm.dart';
import 'package:built_collection/built_collection.dart';

class SingleTechnicalReportRouteParams {
  final String projectId;
  final String reportId;

  SingleTechnicalReportRouteParams(this.projectId, this.reportId);
}

class SingleTechnicalReportController extends GetxController
    with ApiMixin, BusyMixin, UploadFilesMixin {
  final SingleTechnicalReportRouteParams params;

  SingleTechnicalReportController(this.params);

  bool get isCreate => params.reportId == null;
  final reportDetails = Rx<TechnicalReportVM>();

  final formKey = GlobalKey<FormState>();

  final titleController = TextEditingController();
  final descController = TextEditingController();
  final dateController = Rx<DateTime>();

  Future<void> addReport() async {
    if (formKey.currentState?.validate() == true) {
      formKey.currentState.save();
      try {
        startBusy();
        final res = await request(
          api
              .getTechnicalReportsApi()
              .v10ApiProjectsIdTechnicalReportsCreateReportPost(
                params.projectId,
                title: titleController.text,
                desc: descController.text,
                date: dateController.value,
                officialRequestFiles:
                    (await prepareFilesToUpload()).toBuiltList(),
              ),
        );
        endBusySuccess();
        Get.back(result: res);
      } catch (e) {
        endBusyError(e.toString());
      }
    }
  }

  Future<void> fetchReportDetails() async {
    try {
      startBusy();
      final res = await request(
        api
            .getTechnicalReportsApi()
            .v10ApiProjectsIdTechnicalReportsReportIdGet(
              params.projectId,
              params.reportId,
            ),
      );
      reportDetails.value = res;
      endBusySuccess();
    } catch (e) {
      endBusyError(e.toString());
    }
  }

  @override
  void onReady() {
    super.onReady();
    if (!isCreate) {
      fetchReportDetails();
    }
  }
}
