//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/project_chat_participant_vm.dart';
import 'package:proeye_api/model/message_view_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_chat_room_vm.g.dart';

abstract class ProjectChatRoomVM
    implements Built<ProjectChatRoomVM, ProjectChatRoomVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'roomName')
  String get roomName;

  @nullable
  @BuiltValueField(wireName: r'isPublic')
  bool get isPublic;

  @nullable
  @BuiltValueField(wireName: r'roomId')
  String get roomId;

  @nullable
  @BuiltValueField(wireName: r'photoUrl')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: r'participants')
  BuiltList<ProjectChatParticipantVM> get participants;

  @nullable
  @BuiltValueField(wireName: r'pinnedMessages')
  BuiltList<MessageViewModel> get pinnedMessages;

  // Boilerplate code needed to wire-up generated code
  ProjectChatRoomVM._();

  static void _initializeBuilder(ProjectChatRoomVMBuilder b) => b;

  factory ProjectChatRoomVM([void updates(ProjectChatRoomVMBuilder b)]) =
      _$ProjectChatRoomVM;
  static Serializer<ProjectChatRoomVM> get serializer =>
      _$projectChatRoomVMSerializer;
}
