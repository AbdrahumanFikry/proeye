//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'req_create_task_vm.g.dart';

abstract class ReqCreateTaskVM
    implements Built<ReqCreateTaskVM, ReqCreateTaskVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'plannedDurationDays')
  int get plannedDurationDays;

  @nullable
  @BuiltValueField(wireName: r'plannedStartOffset')
  int get plannedStartOffset;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'addedFiles')
  BuiltList<String> get addedFiles;

  // Boilerplate code needed to wire-up generated code
  ReqCreateTaskVM._();

  static void _initializeBuilder(ReqCreateTaskVMBuilder b) => b;

  factory ReqCreateTaskVM([void updates(ReqCreateTaskVMBuilder b)]) =
      _$ReqCreateTaskVM;
  static Serializer<ReqCreateTaskVM> get serializer =>
      _$reqCreateTaskVMSerializer;
}
