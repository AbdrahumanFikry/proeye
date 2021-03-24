import 'package:flutter/foundation.dart';
import 'package:proeye_api/model/project_task_vm.dart';

class CreateOrUpdateTaskRouteParameters {
  final String projectId;
  final String committeeId;
  final String teamId;
  final DateTime committeeStartDate;

  final String taskId;
  final ProjectTaskVM taskDetails;

  CreateOrUpdateTaskRouteParameters({
    @required this.projectId,
    @required this.committeeId,
    @required this.teamId,
    @required this.taskId,
    @required this.taskDetails,
    @required this.committeeStartDate,
  });
}
