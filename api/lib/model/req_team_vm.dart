//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'req_team_vm.g.dart';

abstract class ReqTeamVM implements Built<ReqTeamVM, ReqTeamVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'teamId')
  String get teamId;

  @nullable
  @BuiltValueField(wireName: r'teamName')
  String get teamName;

  // Boilerplate code needed to wire-up generated code
  ReqTeamVM._();

  static void _initializeBuilder(ReqTeamVMBuilder b) => b;

  factory ReqTeamVM([void updates(ReqTeamVMBuilder b)]) = _$ReqTeamVM;
  static Serializer<ReqTeamVM> get serializer => _$reqTeamVMSerializer;
}
