//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'req_committee_vm.g.dart';

abstract class ReqCommitteeVM
    implements Built<ReqCommitteeVM, ReqCommitteeVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'daysCount')
  int get daysCount;

  @nullable
  @BuiltValueField(wireName: r'committeeDirectorId')
  String get committeeDirectorId;

  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  // Boilerplate code needed to wire-up generated code
  ReqCommitteeVM._();

  static void _initializeBuilder(ReqCommitteeVMBuilder b) => b;

  factory ReqCommitteeVM([void updates(ReqCommitteeVMBuilder b)]) =
      _$ReqCommitteeVM;
  static Serializer<ReqCommitteeVM> get serializer =>
      _$reqCommitteeVMSerializer;
}
