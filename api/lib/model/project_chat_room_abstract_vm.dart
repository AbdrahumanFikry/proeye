//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_chat_room_abstract_vm.g.dart';

abstract class ProjectChatRoomAbstractVM
    implements
        Built<ProjectChatRoomAbstractVM, ProjectChatRoomAbstractVMBuilder> {
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

  // Boilerplate code needed to wire-up generated code
  ProjectChatRoomAbstractVM._();

  static void _initializeBuilder(ProjectChatRoomAbstractVMBuilder b) => b;

  factory ProjectChatRoomAbstractVM(
          [void updates(ProjectChatRoomAbstractVMBuilder b)]) =
      _$ProjectChatRoomAbstractVM;
  static Serializer<ProjectChatRoomAbstractVM> get serializer =>
      _$projectChatRoomAbstractVMSerializer;
}
