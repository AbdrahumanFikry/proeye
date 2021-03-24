//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'consulting_center_role_enum.g.dart';

class ConsultingCenterRoleEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'S')
  static const ConsultingCenterRoleEnum S = _$S;
  @BuiltValueEnumConst(wireName: r'D')
  static const ConsultingCenterRoleEnum D = _$D;
  @BuiltValueEnumConst(wireName: r'SD')
  static const ConsultingCenterRoleEnum SD = _$SD;
  @BuiltValueEnumConst(wireName: r'C')
  static const ConsultingCenterRoleEnum C = _$C;

  static Serializer<ConsultingCenterRoleEnum> get serializer =>
      _$consultingCenterRoleEnumSerializer;

  const ConsultingCenterRoleEnum._(String name) : super(name);

  static BuiltSet<ConsultingCenterRoleEnum> get values => _$values;
  static ConsultingCenterRoleEnum valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ConsultingCenterRoleEnumMixin = Object
    with _$ConsultingCenterRoleEnumMixin;
