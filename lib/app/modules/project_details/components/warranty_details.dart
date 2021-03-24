import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/multi_data_components_view.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/generated/l10n.dart';
import 'package:proeye_api/model/start_duration_dto.dart';

class WarrantyDetails extends GetView<ProjectDetailsController> {
  final StartDurationDto warranty;
  final String warrantyTitle;

  WarrantyDetails({
    @required this.warranty,
    @required this.warrantyTitle,
  });
  @override
  Widget build(BuildContext context) {
    return MultiDataComponentsView(
      warrantyTitle,
      warranty.isActive ? S.current.inWarranty : S.current.outOfWarranty,
      [
        ThemedDataViewer(
          title: 'بداية الضمان',
          content: warranty.start?.toShortUserString(),
        ),
        ThemedDataViewer(
          title: 'مدة الضمان',
          content: warranty.durationDays == null
              ? null
              : Duration(days: warranty.durationDays).toUserString(),
        ),
        ThemedDataViewer(
          title: 'انتهاء الضمان',
          content: warranty.end?.toShortUserString(),
        ),
      ],
    );
  }
}
