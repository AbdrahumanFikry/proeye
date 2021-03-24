// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'company_user_relation_types_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CompanyUserRelationTypesEnum _$manager =
    const CompanyUserRelationTypesEnum._('manager');
const CompanyUserRelationTypesEnum _$representative =
    const CompanyUserRelationTypesEnum._('representative');
const CompanyUserRelationTypesEnum _$other =
    const CompanyUserRelationTypesEnum._('other');

CompanyUserRelationTypesEnum _$valueOf(String name) {
  switch (name) {
    case 'manager':
      return _$manager;
    case 'representative':
      return _$representative;
    case 'other':
      return _$other;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CompanyUserRelationTypesEnum> _$values = new BuiltSet<
    CompanyUserRelationTypesEnum>(const <CompanyUserRelationTypesEnum>[
  _$manager,
  _$representative,
  _$other,
]);

class _$CompanyUserRelationTypesEnumMeta {
  const _$CompanyUserRelationTypesEnumMeta();
  CompanyUserRelationTypesEnum get manager => _$manager;
  CompanyUserRelationTypesEnum get representative => _$representative;
  CompanyUserRelationTypesEnum get other => _$other;
  CompanyUserRelationTypesEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<CompanyUserRelationTypesEnum> get values => _$values;
}

abstract class _$CompanyUserRelationTypesEnumMixin {
  // ignore: non_constant_identifier_names
  _$CompanyUserRelationTypesEnumMeta get CompanyUserRelationTypesEnum =>
      const _$CompanyUserRelationTypesEnumMeta();
}

Serializer<CompanyUserRelationTypesEnum>
    _$companyUserRelationTypesEnumSerializer =
    new _$CompanyUserRelationTypesEnumSerializer();

class _$CompanyUserRelationTypesEnumSerializer
    implements PrimitiveSerializer<CompanyUserRelationTypesEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'manager': 'Manager',
    'representative': 'Representative',
    'other': 'Other',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Manager': 'manager',
    'Representative': 'representative',
    'Other': 'other',
  };

  @override
  final Iterable<Type> types = const <Type>[CompanyUserRelationTypesEnum];
  @override
  final String wireName = 'CompanyUserRelationTypesEnum';

  @override
  Object serialize(Serializers serializers, CompanyUserRelationTypesEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CompanyUserRelationTypesEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CompanyUserRelationTypesEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
