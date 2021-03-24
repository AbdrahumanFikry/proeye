import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:pro_eye/app/components/form_fields/_export.dart';
import 'package:pro_eye/app/components/multi_data_components_view.dart';
import 'package:pro_eye/app/modules/project_details/controllers/project_details_controller.dart';
import 'package:pro_eye/generated/l10n.dart';

class CreationDetailsBlock extends GetView<ProjectDetailsController> {
  @override
  Widget build(BuildContext context) {
    final projectDetails = controller.projectDetails.value;
    final Duration duration = projectDetails?.plannedEnd?.difference(
      projectDetails.plannedStart,
    );
    return MultiDataComponentsView(
      S.of(context).creationDetails,
      'ينتهي: ${projectDetails?.plannedEnd?.toShortUserString() ?? "-"}',
      [
        if (projectDetails?.creationDate != null)
          ThemedDataViewer(
            title: 'تاريخ تقديم الطلب',
            content: projectDetails.creationDate.toShortUserString(),
          ),
        ThemedDataViewer(
          title: S.of(context).executiveDuration,
          content: duration.toUserString(),
        ),
        if (projectDetails?.plannedStart != null)
          ThemedDataViewer(
            title: S.of(context).plannedStartDate,
            content: DateFormat.yMMMMd().format(projectDetails.plannedStart),
          ),
        if (projectDetails?.plannedEnd != null)
          ThemedDataViewer(
            title: S.of(context).plannedEndDate,
            content: projectDetails.plannedEnd.toShortUserString(),
          ),
        if (projectDetails?.actualEnd != null)
          ThemedDataViewer(
            title: S.of(context).actualEndDate,
            content: DateFormat.yMMMMd().format(projectDetails.actualEnd),
          ),
        ThemedDataViewer(
          title: S.of(context).completionRate,
          content:
              (projectDetails?.completePercentage?.toStringAsFixed(1) ?? '0') +
                  ' % ',
        ),
      ],
    );
  }
}
