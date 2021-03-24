//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'req_receive_committee_vm.g.dart';

abstract class ReqReceiveCommitteeVM
    implements Built<ReqReceiveCommitteeVM, ReqReceiveCommitteeVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'plannedStart')
  DateTime get plannedStart;

  @nullable
  @BuiltValueField(wireName: r'committeeDirectorId')
  String get committeeDirectorId;

  @nullable
  @BuiltValueField(wireName: r'daysCount')
  int get daysCount;

  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  // Boilerplate code needed to wire-up generated code
  ReqReceiveCommitteeVM._();

  static void _initializeBuilder(ReqReceiveCommitteeVMBuilder b) => b;

  factory ReqReceiveCommitteeVM(
      [void updates(ReqReceiveCommitteeVMBuilder b)]) = _$ReqReceiveCommitteeVM;
  static Serializer<ReqReceiveCommitteeVM> get serializer =>
      _$reqReceiveCommitteeVMSerializer;
}
