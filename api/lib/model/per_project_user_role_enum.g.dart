// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'per_project_user_role_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PerProjectUserRoleEnum _$teamMember =
    const PerProjectUserRoleEnum._('teamMember');
const PerProjectUserRoleEnum _$projectLeader =
    const PerProjectUserRoleEnum._('projectLeader');
const PerProjectUserRoleEnum _$committeeLeader =
    const PerProjectUserRoleEnum._('committeeLeader');

PerProjectUserRoleEnum _$valueOf(String name) {
  switch (name) {
    case 'teamMember':
      return _$teamMember;
    case 'projectLeader':
      return _$projectLeader;
    case 'committeeLeader':
      return _$committeeLeader;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PerProjectUserRoleEnum> _$values =
    new BuiltSet<PerProjectUserRoleEnum>(const <PerProjectUserRoleEnum>[
  _$teamMember,
  _$projectLeader,
  _$committeeLeader,
]);

class _$PerProjectUserRoleEnumMeta {
  const _$PerProjectUserRoleEnumMeta();
  PerProjectUserRoleEnum get teamMember => _$teamMember;
  PerProjectUserRoleEnum get projectLeader => _$projectLeader;
  PerProjectUserRoleEnum get committeeLeader => _$committeeLeader;
  PerProjectUserRoleEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<PerProjectUserRoleEnum> get values => _$values;
}

abstract class _$PerProjectUserRoleEnumMixin {
  // ignore: non_constant_identifier_names
  _$PerProjectUserRoleEnumMeta get PerProjectUserRoleEnum =>
      const _$PerProjectUserRoleEnumMeta();
}

Serializer<PerProjectUserRoleEnum> _$perProjectUserRoleEnumSerializer =
    new _$PerProjectUserRoleEnumSerializer();

class _$PerProjectUserRoleEnumSerializer
    implements PrimitiveSerializer<PerProjectUserRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'teamMember': 'TeamMember',
    'projectLeader': 'ProjectLeader',
    'committeeLeader': 'CommitteeLeader',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TeamMember': 'teamMember',
    'ProjectLeader': 'projectLeader',
    'CommitteeLeader': 'committeeLeader',
  };

  @override
  final Iterable<Type> types = const <Type>[PerProjectUserRoleEnum];
  @override
  final String wireName = 'PerProjectUserRoleEnum';

  @override
  Object serialize(Serializers serializers, PerProjectUserRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PerProjectUserRoleEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PerProjectUserRoleEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
