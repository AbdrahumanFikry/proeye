// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'req_receive_committee_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqReceiveCommitteeVM> _$reqReceiveCommitteeVMSerializer =
    new _$ReqReceiveCommitteeVMSerializer();

class _$ReqReceiveCommitteeVMSerializer
    implements StructuredSerializer<ReqReceiveCommitteeVM> {
  @override
  final Iterable<Type> types = const [
    ReqReceiveCommitteeVM,
    _$ReqReceiveCommitteeVM
  ];
  @override
  final String wireName = 'ReqReceiveCommitteeVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReqReceiveCommitteeVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.plannedStart;
    if (value != null) {
      result
        ..add('plannedStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.committeeDirectorId;
    if (value != null) {
      result
        ..add('committeeDirectorId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.daysCount;
    if (value != null) {
      result
        ..add('daysCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReqReceiveCommitteeVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReqReceiveCommitteeVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'plannedStart':
          result.plannedStart = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'committeeDirectorId':
          result.committeeDirectorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'daysCount':
          result.daysCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReqReceiveCommitteeVM extends ReqReceiveCommitteeVM {
  @override
  final DateTime plannedStart;
  @override
  final String committeeDirectorId;
  @override
  final int daysCount;
  @override
  final String id;

  factory _$ReqReceiveCommitteeVM(
          [void Function(ReqReceiveCommitteeVMBuilder) updates]) =>
      (new ReqReceiveCommitteeVMBuilder()..update(updates)).build();

  _$ReqReceiveCommitteeVM._(
      {this.plannedStart, this.committeeDirectorId, this.daysCount, this.id})
      : super._();

  @override
  ReqReceiveCommitteeVM rebuild(
          void Function(ReqReceiveCommitteeVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqReceiveCommitteeVMBuilder toBuilder() =>
      new ReqReceiveCommitteeVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqReceiveCommitteeVM &&
        plannedStart == other.plannedStart &&
        committeeDirectorId == other.committeeDirectorId &&
        daysCount == other.daysCount &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, plannedStart.hashCode), committeeDirectorId.hashCode),
            daysCount.hashCode),
        id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReqReceiveCommitteeVM')
          ..add('plannedStart', plannedStart)
          ..add('committeeDirectorId', committeeDirectorId)
          ..add('daysCount', daysCount)
          ..add('id', id))
        .toString();
  }
}

class ReqReceiveCommitteeVMBuilder
    implements Builder<ReqReceiveCommitteeVM, ReqReceiveCommitteeVMBuilder> {
  _$ReqReceiveCommitteeVM _$v;

  DateTime _plannedStart;
  DateTime get plannedStart => _$this._plannedStart;
  set plannedStart(DateTime plannedStart) =>
      _$this._plannedStart = plannedStart;

  String _committeeDirectorId;
  String get committeeDirectorId => _$this._committeeDirectorId;
  set committeeDirectorId(String committeeDirectorId) =>
      _$this._committeeDirectorId = committeeDirectorId;

  int _daysCount;
  int get daysCount => _$this._daysCount;
  set daysCount(int daysCount) => _$this._daysCount = daysCount;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ReqReceiveCommitteeVMBuilder() {
    ReqReceiveCommitteeVM._initializeBuilder(this);
  }

  ReqReceiveCommitteeVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plannedStart = $v.plannedStart;
      _committeeDirectorId = $v.committeeDirectorId;
      _daysCount = $v.daysCount;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqReceiveCommitteeVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqReceiveCommitteeVM;
  }

  @override
  void update(void Function(ReqReceiveCommitteeVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReqReceiveCommitteeVM build() {
    final _$result = _$v ??
        new _$ReqReceiveCommitteeVM._(
            plannedStart: plannedStart,
            committeeDirectorId: committeeDirectorId,
            daysCount: daysCount,
            id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
