//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/user_view_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/committee_type_enum.dart';
import 'package:proeye_api/model/project_team_vm.dart';
import 'package:proeye_api/model/colored_danger_zone_vm.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_committee_vm.g.dart';

abstract class ProjectCommitteeVM
    implements Built<ProjectCommitteeVM, ProjectCommitteeVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'isDone')
  bool get isDone;

  @nullable
  @BuiltValueField(wireName: r'isLate')
  bool get isLate;

  @nullable
  @BuiltValueField(wireName: r'plannedStart')
  DateTime get plannedStart;

  @nullable
  @BuiltValueField(wireName: r'plannedDurationDays')
  int get plannedDurationDays;

  @nullable
  @BuiltValueField(wireName: r'plannedEnd')
  DateTime get plannedEnd;

  @nullable
  @BuiltValueField(wireName: r'actualEnd')
  DateTime get actualEnd;

  @nullable
  @BuiltValueField(wireName: r'dangerPercent')
  double get dangerPercent;

  @nullable
  @BuiltValueField(wireName: r'committeeId')
  String get committeeId;

  @nullable
  @BuiltValueField(wireName: r'committeeName')
  String get committeeName;

  @nullable
  @BuiltValueField(wireName: r'committeeDirector')
  UserViewModel get committeeDirector;

  @nullable
  @BuiltValueField(wireName: r'order')
  int get order;

  @nullable
  @BuiltValueField(wireName: r'committeeType')
  CommitteeTypeEnum get committeeType;
  // enum committeeTypeEnum {  PlanningOrExecution,  ReceiveInitial,  ReceiveFinal,  };

  @nullable
  @BuiltValueField(wireName: r'taskDangerZones')
  BuiltList<ColoredDangerZoneVM> get taskDangerZones;

  @nullable
  @BuiltValueField(wireName: r'teams')
  BuiltList<ProjectTeamVM> get teams;

  // Boilerplate code needed to wire-up generated code
  ProjectCommitteeVM._();

  static void _initializeBuilder(ProjectCommitteeVMBuilder b) => b;

  factory ProjectCommitteeVM([void updates(ProjectCommitteeVMBuilder b)]) =
      _$ProjectCommitteeVM;
  static Serializer<ProjectCommitteeVM> get serializer =>
      _$projectCommitteeVMSerializer;
}
