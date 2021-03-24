// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'req_committee_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqCommitteeVM> _$reqCommitteeVMSerializer =
    new _$ReqCommitteeVMSerializer();

class _$ReqCommitteeVMSerializer
    implements StructuredSerializer<ReqCommitteeVM> {
  @override
  final Iterable<Type> types = const [ReqCommitteeVM, _$ReqCommitteeVM];
  @override
  final String wireName = 'ReqCommitteeVM';

  @override
  Iterable<Object> serialize(Serializers serializers, ReqCommitteeVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.daysCount;
    if (value != null) {
      result
        ..add('daysCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.committeeDirectorId;
    if (value != null) {
      result
        ..add('committeeDirectorId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReqCommitteeVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReqCommitteeVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'daysCount':
          result.daysCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'committeeDirectorId':
          result.committeeDirectorId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReqCommitteeVM extends ReqCommitteeVM {
  @override
  final String id;
  @override
  final int daysCount;
  @override
  final String committeeDirectorId;
  @override
  final String name;

  factory _$ReqCommitteeVM([void Function(ReqCommitteeVMBuilder) updates]) =>
      (new ReqCommitteeVMBuilder()..update(updates)).build();

  _$ReqCommitteeVM._(
      {this.id, this.daysCount, this.committeeDirectorId, this.name})
      : super._();

  @override
  ReqCommitteeVM rebuild(void Function(ReqCommitteeVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqCommitteeVMBuilder toBuilder() =>
      new ReqCommitteeVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqCommitteeVM &&
        id == other.id &&
        daysCount == other.daysCount &&
        committeeDirectorId == other.committeeDirectorId &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), daysCount.hashCode),
            committeeDirectorId.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReqCommitteeVM')
          ..add('id', id)
          ..add('daysCount', daysCount)
          ..add('committeeDirectorId', committeeDirectorId)
          ..add('name', name))
        .toString();
  }
}

class ReqCommitteeVMBuilder
    implements Builder<ReqCommitteeVM, ReqCommitteeVMBuilder> {
  _$ReqCommitteeVM _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  int _daysCount;
  int get daysCount => _$this._daysCount;
  set daysCount(int daysCount) => _$this._daysCount = daysCount;

  String _committeeDirectorId;
  String get committeeDirectorId => _$this._committeeDirectorId;
  set committeeDirectorId(String committeeDirectorId) =>
      _$this._committeeDirectorId = committeeDirectorId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ReqCommitteeVMBuilder() {
    ReqCommitteeVM._initializeBuilder(this);
  }

  ReqCommitteeVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _daysCount = $v.daysCount;
      _committeeDirectorId = $v.committeeDirectorId;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqCommitteeVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqCommitteeVM;
  }

  @override
  void update(void Function(ReqCommitteeVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReqCommitteeVM build() {
    final _$result = _$v ??
        new _$ReqCommitteeVM._(
            id: id,
            daysCount: daysCount,
            committeeDirectorId: committeeDirectorId,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
