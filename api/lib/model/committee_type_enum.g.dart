// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'committee_type_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommitteeTypeEnum _$planningOrExecution =
    const CommitteeTypeEnum._('planningOrExecution');
const CommitteeTypeEnum _$receiveInitial =
    const CommitteeTypeEnum._('receiveInitial');
const CommitteeTypeEnum _$receiveFinal =
    const CommitteeTypeEnum._('receiveFinal');

CommitteeTypeEnum _$valueOf(String name) {
  switch (name) {
    case 'planningOrExecution':
      return _$planningOrExecution;
    case 'receiveInitial':
      return _$receiveInitial;
    case 'receiveFinal':
      return _$receiveFinal;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CommitteeTypeEnum> _$values =
    new BuiltSet<CommitteeTypeEnum>(const <CommitteeTypeEnum>[
  _$planningOrExecution,
  _$receiveInitial,
  _$receiveFinal,
]);

class _$CommitteeTypeEnumMeta {
  const _$CommitteeTypeEnumMeta();
  CommitteeTypeEnum get planningOrExecution => _$planningOrExecution;
  CommitteeTypeEnum get receiveInitial => _$receiveInitial;
  CommitteeTypeEnum get receiveFinal => _$receiveFinal;
  CommitteeTypeEnum valueOf(String name) => _$valueOf(name);
  BuiltSet<CommitteeTypeEnum> get values => _$values;
}

abstract class _$CommitteeTypeEnumMixin {
  // ignore: non_constant_identifier_names
  _$CommitteeTypeEnumMeta get CommitteeTypeEnum =>
      const _$CommitteeTypeEnumMeta();
}

Serializer<CommitteeTypeEnum> _$committeeTypeEnumSerializer =
    new _$CommitteeTypeEnumSerializer();

class _$CommitteeTypeEnumSerializer
    implements PrimitiveSerializer<CommitteeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'planningOrExecution': 'PlanningOrExecution',
    'receiveInitial': 'ReceiveInitial',
    'receiveFinal': 'ReceiveFinal',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PlanningOrExecution': 'planningOrExecution',
    'ReceiveInitial': 'receiveInitial',
    'ReceiveFinal': 'receiveFinal',
  };

  @override
  final Iterable<Type> types = const <Type>[CommitteeTypeEnum];
  @override
  final String wireName = 'CommitteeTypeEnum';

  @override
  Object serialize(Serializers serializers, CommitteeTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CommitteeTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CommitteeTypeEnum.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
