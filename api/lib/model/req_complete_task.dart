//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'req_complete_task.g.dart';

abstract class ReqCompleteTask
    implements Built<ReqCompleteTask, ReqCompleteTaskBuilder> {
  @nullable
  @BuiltValueField(wireName: r'actualEnd')
  DateTime get actualEnd;

  @nullable
  @BuiltValueField(wireName: r'warrantyPeriodStart')
  DateTime get warrantyPeriodStart;

  @nullable
  @BuiltValueField(wireName: r'warrantyDurationDays')
  int get warrantyDurationDays;

  // Boilerplate code needed to wire-up generated code
  ReqCompleteTask._();

  static void _initializeBuilder(ReqCompleteTaskBuilder b) => b;

  factory ReqCompleteTask([void updates(ReqCompleteTaskBuilder b)]) =
      _$ReqCompleteTask;
  static Serializer<ReqCompleteTask> get serializer =>
      _$reqCompleteTaskSerializer;
}
