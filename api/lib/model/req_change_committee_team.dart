//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/req_team_vm.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'req_change_committee_team.g.dart';

abstract class ReqChangeCommitteeTeam
    implements Built<ReqChangeCommitteeTeam, ReqChangeCommitteeTeamBuilder> {
  @nullable
  @BuiltValueField(wireName: r'teams')
  BuiltList<ReqTeamVM> get teams;

  @nullable
  @BuiltValueField(wireName: r'files')
  BuiltList<String> get files;

  // Boilerplate code needed to wire-up generated code
  ReqChangeCommitteeTeam._();

  static void _initializeBuilder(ReqChangeCommitteeTeamBuilder b) => b;

  factory ReqChangeCommitteeTeam(
          [void updates(ReqChangeCommitteeTeamBuilder b)]) =
      _$ReqChangeCommitteeTeam;
  static Serializer<ReqChangeCommitteeTeam> get serializer =>
      _$reqChangeCommitteeTeamSerializer;
}
