// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'consulting_center_role_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConsultingCenterRoleEnum _$S = const ConsultingCenterRoleEnum._('S');
const ConsultingCenterRoleEnum _$D = const ConsultingCenterRoleEnum._('D');
const ConsultingCenterRoleEnum _$SD = const ConsultingCenterRoleEnum._('SD');
const ConsultingCenterRoleEnum _$C = const ConsultingCenterRoleEnum._('C');

ConsultingCenterRoleEnum _$valueOf(String name) {
  switch (name) {
    case 'S':
      return _$S;
    case 'D':
      return _$D;
    case 'SD':
      return _$SD;
    case 'C':
      return _$C;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ConsultingCenterRoleEnum> _$values =
    new BuiltSet<ConsultingCenterRoleEnum>(const <ConsultingCenterRoleEnum>[
  _$S,
  _$D,
  _$SD,
  _$C,
]);

class _$ConsultingCenterRoleEnumMeta {
  const _$ConsultingCenterRoleEnumMeta();
  ConsultingCenterRoleEnum get S => _$S;
  ConsultingCenterRoleEnum get D => _$D;
  ConsultingCenterRoleEnum get SD => _$SD;
  ConsultingCenterRoleEnum get C => _$C;
  ConsultingCenterRoleEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<ConsultingCenterRoleEnum> get values => _$values;
}

abstract class _$ConsultingCenterRoleEnumMixin {
  // ignore: non_constant_identifier_names
  _$ConsultingCenterRoleEnumMeta get ConsultingCenterRoleEnum =>
      const _$ConsultingCenterRoleEnumMeta();
}

Serializer<ConsultingCenterRoleEnum> _$consultingCenterRoleEnumSerializer =
    new _$ConsultingCenterRoleEnumSerializer();

class _$ConsultingCenterRoleEnumSerializer
    implements PrimitiveSerializer<ConsultingCenterRoleEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'S': 'S',
    'D': 'D',
    'SD': 'SD',
    'C': 'C',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'S': 'S',
    'D': 'D',
    'SD': 'SD',
    'C': 'C',
  };

  @override
  final Iterable<Type> types = const <Type>[ConsultingCenterRoleEnum];
  @override
  final String wireName = 'ConsultingCenterRoleEnum';

  @override
  Object serialize(Serializers serializers, ConsultingCenterRoleEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConsultingCenterRoleEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConsultingCenterRoleEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
