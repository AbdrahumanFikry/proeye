//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:proeye_api/model/transaction_action_type_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_view_model.g.dart';

abstract class TransactionViewModel
    implements Built<TransactionViewModel, TransactionViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'transactionId')
  String get transactionId;

  @nullable
  @BuiltValueField(wireName: r'newValues')
  BuiltMap<String, JsonObject> get newValues;

  @nullable
  @BuiltValueField(wireName: r'issuedAt')
  DateTime get issuedAt;

  @nullable
  @BuiltValueField(wireName: r'basedOnTransaction')
  String get basedOnTransaction;

  @nullable
  @BuiltValueField(wireName: r'issuerId')
  String get issuerId;

  @nullable
  @BuiltValueField(wireName: r'reviewedAt')
  DateTime get reviewedAt;

  @nullable
  @BuiltValueField(wireName: r'reviewedBy')
  String get reviewedBy;

  @nullable
  @BuiltValueField(wireName: r'isAccepted')
  bool get isAccepted;

  @nullable
  @BuiltValueField(wireName: r'reviewNotes')
  String get reviewNotes;

  @nullable
  @BuiltValueField(wireName: r'transactionAction')
  TransactionActionTypeEnum get transactionAction;
  // enum transactionActionEnum {  CreateProject,  EngManagementDirector_ConfirmProject,  ExecutiveManager_CompleteProjectRequest,  CommitteeLeader_EditTeams,  CommitteeLeader_EditTeamMembers,  CommitteeLeader_AddTask,  EngManagementDirector_SpecifySupervisionStatus,  CommitteeLeader_UpdateTask,  CommitteeLeader_DeleteTask,  AddCommentToTask,  EngManagementDirector_EditProject,  CommitteeLeader_CompleteTask,  ExecutiveManager_EditProjectRequest,  ExecutiveManager_CreateReceiveCommittee,  DataEntry_ExecutiveManager_EditProjectDetails,  };

  @nullable
  @BuiltValueField(wireName: r'files')
  BuiltList<String> get files;

  // Boilerplate code needed to wire-up generated code
  TransactionViewModel._();

  static void _initializeBuilder(TransactionViewModelBuilder b) => b;

  factory TransactionViewModel([void updates(TransactionViewModelBuilder b)]) =
      _$TransactionViewModel;
  static Serializer<TransactionViewModel> get serializer =>
      _$transactionViewModelSerializer;
}
