//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'req_update_task_vm.g.dart';

abstract class ReqUpdateTaskVM
    implements Built<ReqUpdateTaskVM, ReqUpdateTaskVMBuilder> {
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

  @nullable
  @BuiltValueField(wireName: r'notes')
  String get notes;

  @nullable
  @BuiltValueField(wireName: r'removedFiles')
  BuiltList<String> get removedFiles;

  // Boilerplate code needed to wire-up generated code
  ReqUpdateTaskVM._();

  static void _initializeBuilder(ReqUpdateTaskVMBuilder b) => b;

  factory ReqUpdateTaskVM([void updates(ReqUpdateTaskVMBuilder b)]) =
      _$ReqUpdateTaskVM;
  static Serializer<ReqUpdateTaskVM> get serializer =>
      _$reqUpdateTaskVMSerializer;
}
