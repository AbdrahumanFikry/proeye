//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/user_view_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/project_abstract_task_vm.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_team_vm.g.dart';

abstract class ProjectTeamVM
    implements Built<ProjectTeamVM, ProjectTeamVMBuilder> {
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
  @BuiltValueField(wireName: r'teamId')
  String get teamId;

  @nullable
  @BuiltValueField(wireName: r'teamName')
  String get teamName;

  @nullable
  @BuiltValueField(wireName: r'tasks')
  BuiltList<ProjectAbstractTaskVM> get tasks;

  @nullable
  @BuiltValueField(wireName: r'members')
  BuiltList<UserViewModel> get members;

  // Boilerplate code needed to wire-up generated code
  ProjectTeamVM._();

  static void _initializeBuilder(ProjectTeamVMBuilder b) => b;

  factory ProjectTeamVM([void updates(ProjectTeamVMBuilder b)]) =
      _$ProjectTeamVM;
  static Serializer<ProjectTeamVM> get serializer => _$projectTeamVMSerializer;
}
