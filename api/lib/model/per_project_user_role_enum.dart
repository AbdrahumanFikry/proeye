//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'per_project_user_role_enum.g.dart';

class PerProjectUserRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TeamMember')
  static const PerProjectUserRoleEnum teamMember = _$teamMember;
  @BuiltValueEnumConst(wireName: r'ProjectLeader')
  static const PerProjectUserRoleEnum projectLeader = _$projectLeader;
  @BuiltValueEnumConst(wireName: r'CommitteeLeader')
  static const PerProjectUserRoleEnum committeeLeader = _$committeeLeader;

  static Serializer<PerProjectUserRoleEnum> get serializer =>
      _$perProjectUserRoleEnumSerializer;

  const PerProjectUserRoleEnum._(String name) : super(name);

  static BuiltSet<PerProjectUserRoleEnum> get values => _$values;
  static PerProjectUserRoleEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PerProjectUserRoleEnumMixin = Object
    with _$PerProjectUserRoleEnumMixin;
