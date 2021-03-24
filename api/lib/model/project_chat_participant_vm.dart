//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/user_view_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_chat_participant_vm.g.dart';

abstract class ProjectChatParticipantVM
    implements
        Built<ProjectChatParticipantVM, ProjectChatParticipantVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'user')
  UserViewModel get user;

  @nullable
  @BuiltValueField(wireName: r'isAdmin')
  bool get isAdmin;

  // Boilerplate code needed to wire-up generated code
  ProjectChatParticipantVM._();

  static void _initializeBuilder(ProjectChatParticipantVMBuilder b) => b;

  factory ProjectChatParticipantVM(
          [void updates(ProjectChatParticipantVMBuilder b)]) =
      _$ProjectChatParticipantVM;
  static Serializer<ProjectChatParticipantVM> get serializer =>
      _$projectChatParticipantVMSerializer;
}
