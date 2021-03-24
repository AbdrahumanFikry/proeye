//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/colored_danger_zone_vm.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_abstract_task_vm.g.dart';

abstract class ProjectAbstractTaskVM
    implements Built<ProjectAbstractTaskVM, ProjectAbstractTaskVMBuilder> {
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
  @BuiltValueField(wireName: r'taskId')
  String get taskId;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'notes')
  String get notes;

  @nullable
  @BuiltValueField(wireName: r'isReceiveTask')
  bool get isReceiveTask;

  @nullable
  @BuiltValueField(wireName: r'colorInfo')
  ColoredDangerZoneVM get colorInfo;

  // Boilerplate code needed to wire-up generated code
  ProjectAbstractTaskVM._();

  static void _initializeBuilder(ProjectAbstractTaskVMBuilder b) => b;

  factory ProjectAbstractTaskVM(
      [void updates(ProjectAbstractTaskVMBuilder b)]) = _$ProjectAbstractTaskVM;
  static Serializer<ProjectAbstractTaskVM> get serializer =>
      _$projectAbstractTaskVMSerializer;
}
