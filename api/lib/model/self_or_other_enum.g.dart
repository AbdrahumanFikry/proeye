// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'self_or_other_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SelfOrOtherEnum _$self = const SelfOrOtherEnum._('self');
const SelfOrOtherEnum _$other = const SelfOrOtherEnum._('other');

SelfOrOtherEnum _$valueOf(String name) {
  switch (name) {
    case 'self':
      return _$self;
    case 'other':
      return _$other;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SelfOrOtherEnum> _$values =
    new BuiltSet<SelfOrOtherEnum>(const <SelfOrOtherEnum>[
  _$self,
  _$other,
]);

class _$SelfOrOtherEnumMeta {
  const _$SelfOrOtherEnumMeta();
  SelfOrOtherEnum get self => _$self;
  SelfOrOtherEnum get other => _$other;
  SelfOrOtherEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<SelfOrOtherEnum> get values => _$values;
}

abstract class _$SelfOrOtherEnumMixin {
  // ignore: non_constant_identifier_names
  _$SelfOrOtherEnumMeta get SelfOrOtherEnum => const _$SelfOrOtherEnumMeta();
}

Serializer<SelfOrOtherEnum> _$selfOrOtherEnumSerializer =
    new _$SelfOrOtherEnumSerializer();

class _$SelfOrOtherEnumSerializer
    implements PrimitiveSerializer<SelfOrOtherEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'self': 'Self',
    'other': 'Other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Self': 'self',
    'Other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[SelfOrOtherEnum];
  @override
  final String wireName = 'SelfOrOtherEnum';

  @override
  Object serialize(Serializers serializers, SelfOrOtherEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SelfOrOtherEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SelfOrOtherEnum.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
