// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'warranty_stage_filter_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WarrantyStageFilterEnum _$initialWarranty =
    const WarrantyStageFilterEnum._('initialWarranty');
const WarrantyStageFilterEnum _$finalWarranty =
    const WarrantyStageFilterEnum._('finalWarranty');
const WarrantyStageFilterEnum _$afterFinalWarranty =
    const WarrantyStageFilterEnum._('afterFinalWarranty');

WarrantyStageFilterEnum _$valueOf(String name) {
  switch (name) {
    case 'initialWarranty':
      return _$initialWarranty;
    case 'finalWarranty':
      return _$finalWarranty;
    case 'afterFinalWarranty':
      return _$afterFinalWarranty;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<WarrantyStageFilterEnum> _$values =
    new BuiltSet<WarrantyStageFilterEnum>(const <WarrantyStageFilterEnum>[
  _$initialWarranty,
  _$finalWarranty,
  _$afterFinalWarranty,
]);

class _$WarrantyStageFilterEnumMeta {
  const _$WarrantyStageFilterEnumMeta();
  WarrantyStageFilterEnum get initialWarranty => _$initialWarranty;
  WarrantyStageFilterEnum get finalWarranty => _$finalWarranty;
  WarrantyStageFilterEnum get afterFinalWarranty => _$afterFinalWarranty;
  WarrantyStageFilterEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<WarrantyStageFilterEnum> get values => _$values;
}

abstract class _$WarrantyStageFilterEnumMixin {
  // ignore: non_constant_identifier_names
  _$WarrantyStageFilterEnumMeta get WarrantyStageFilterEnum =>
      const _$WarrantyStageFilterEnumMeta();
}

Serializer<WarrantyStageFilterEnum> _$warrantyStageFilterEnumSerializer =
    new _$WarrantyStageFilterEnumSerializer();

class _$WarrantyStageFilterEnumSerializer
    implements PrimitiveSerializer<WarrantyStageFilterEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'initialWarranty': 'InitialWarranty',
    'finalWarranty': 'FinalWarranty',
    'afterFinalWarranty': 'AfterFinalWarranty',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InitialWarranty': 'initialWarranty',
    'FinalWarranty': 'finalWarranty',
    'AfterFinalWarranty': 'afterFinalWarranty',
  };

  @override
  final Iterable<Type> types = const <Type>[WarrantyStageFilterEnum];
  @override
  final String wireName = 'WarrantyStageFilterEnum';

  @override
  Object serialize(Serializers serializers, WarrantyStageFilterEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WarrantyStageFilterEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WarrantyStageFilterEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
