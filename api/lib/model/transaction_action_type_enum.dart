//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_action_type_enum.g.dart';

class TransactionActionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CreateProject')
  static const TransactionActionTypeEnum createProject = _$createProject;
  @BuiltValueEnumConst(wireName: r'EngManagementDirector_ConfirmProject')
  static const TransactionActionTypeEnum engManagementDirectorConfirmProject =
      _$engManagementDirectorConfirmProject;
  @BuiltValueEnumConst(wireName: r'ExecutiveManager_CompleteProjectRequest')
  static const TransactionActionTypeEnum
      executiveManagerCompleteProjectRequest =
      _$executiveManagerCompleteProjectRequest;
  @BuiltValueEnumConst(wireName: r'CommitteeLeader_EditTeams')
  static const TransactionActionTypeEnum committeeLeaderEditTeams =
      _$committeeLeaderEditTeams;
  @BuiltValueEnumConst(wireName: r'CommitteeLeader_EditTeamMembers')
  static const TransactionActionTypeEnum committeeLeaderEditTeamMembers =
      _$committeeLeaderEditTeamMembers;
  @BuiltValueEnumConst(wireName: r'CommitteeLeader_AddTask')
  static const TransactionActionTypeEnum committeeLeaderAddTask =
      _$committeeLeaderAddTask;
  @BuiltValueEnumConst(
      wireName: r'EngManagementDirector_SpecifySupervisionStatus')
  static const TransactionActionTypeEnum
      engManagementDirectorSpecifySupervisionStatus =
      _$engManagementDirectorSpecifySupervisionStatus;
  @BuiltValueEnumConst(wireName: r'CommitteeLeader_UpdateTask')
  static const TransactionActionTypeEnum committeeLeaderUpdateTask =
      _$committeeLeaderUpdateTask;
  @BuiltValueEnumConst(wireName: r'CommitteeLeader_DeleteTask')
  static const TransactionActionTypeEnum committeeLeaderDeleteTask =
      _$committeeLeaderDeleteTask;
  @BuiltValueEnumConst(wireName: r'AddCommentToTask')
  static const TransactionActionTypeEnum addCommentToTask = _$addCommentToTask;
  @BuiltValueEnumConst(wireName: r'EngManagementDirector_EditProject')
  static const TransactionActionTypeEnum engManagementDirectorEditProject =
      _$engManagementDirectorEditProject;
  @BuiltValueEnumConst(wireName: r'CommitteeLeader_CompleteTask')
  static const TransactionActionTypeEnum committeeLeaderCompleteTask =
      _$committeeLeaderCompleteTask;
  @BuiltValueEnumConst(wireName: r'ExecutiveManager_EditProjectRequest')
  static const TransactionActionTypeEnum executiveManagerEditProjectRequest =
      _$executiveManagerEditProjectRequest;
  @BuiltValueEnumConst(wireName: r'ExecutiveManager_CreateReceiveCommittee')
  static const TransactionActionTypeEnum
      executiveManagerCreateReceiveCommittee =
      _$executiveManagerCreateReceiveCommittee;
  @BuiltValueEnumConst(
      wireName: r'DataEntry_ExecutiveManager_EditProjectDetails')
  static const TransactionActionTypeEnum
      dataEntryExecutiveManagerEditProjectDetails =
      _$dataEntryExecutiveManagerEditProjectDetails;

  static Serializer<TransactionActionTypeEnum> get serializer =>
      _$transactionActionTypeEnumSerializer;

  const TransactionActionTypeEnum._(String name) : super(name);

  static BuiltSet<TransactionActionTypeEnum> get values => _$values;
  static TransactionActionTypeEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TransactionActionTypeEnumMixin = Object
    with _$TransactionActionTypeEnumMixin;
