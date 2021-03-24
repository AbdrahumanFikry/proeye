//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/per_project_user_role_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'per_project_user_role_vm.g.dart';

abstract class PerProjectUserRoleVM
    implements Built<PerProjectUserRoleVM, PerProjectUserRoleVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'type')
  PerProjectUserRoleEnum get type;
  // enum typeEnum {  TeamMember,  ProjectLeader,  CommitteeLeader,  };

  @nullable
  @BuiltValueField(wireName: r'committeeId')
  String get committeeId;

  @nullable
  @BuiltValueField(wireName: r'teamId')
  String get teamId;

  // Boilerplate code needed to wire-up generated code
  PerProjectUserRoleVM._();

  static void _initializeBuilder(PerProjectUserRoleVMBuilder b) => b;

  factory PerProjectUserRoleVM([void updates(PerProjectUserRoleVMBuilder b)]) =
      _$PerProjectUserRoleVM;
  static Serializer<PerProjectUserRoleVM> get serializer =>
      _$perProjectUserRoleVMSerializer;
}
