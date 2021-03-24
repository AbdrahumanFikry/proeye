import 'package:built_collection/built_collection.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/themed_files_form_field.dart';
import 'package:pro_eye/app/modules/attachments/controllers/attachments_controller.dart';
import 'package:proeye_api/model/app_file_view_model.dart';

class AttachmentsBinding extends Bindings {
  @override
  void dependencies() {
    var arg = Get.arguments;
    AttachmentsControllerRouteParams res;
    if (arg is AttachmentsControllerRouteParams) {
      res = arg;
    } else if (arg is Iterable<AppFileViewModel>) {
      res = AttachmentsControllerRouteParams(
        canDeleteOld: false,
        enabled: false,
        controller: FilesState(
          existingFiles: arg.toBuiltList(),
        ).obs,
      );
    }
    Get.lazyPut<AttachmentsController>(
      () => AttachmentsController(res),
    );
  }
}
