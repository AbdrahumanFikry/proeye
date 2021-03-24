// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'per_project_user_role_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PerProjectUserRoleVM> _$perProjectUserRoleVMSerializer =
    new _$PerProjectUserRoleVMSerializer();

class _$PerProjectUserRoleVMSerializer
    implements StructuredSerializer<PerProjectUserRoleVM> {
  @override
  final Iterable<Type> types = const [
    PerProjectUserRoleVM,
    _$PerProjectUserRoleVM
  ];
  @override
  final String wireName = 'PerProjectUserRoleVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PerProjectUserRoleVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(PerProjectUserRoleEnum)));
    }
    value = object.committeeId;
    if (value != null) {
      result
        ..add('committeeId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teamId;
    if (value != null) {
      result
        ..add('teamId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PerProjectUserRoleVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PerProjectUserRoleVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(PerProjectUserRoleEnum))
              as PerProjectUserRoleEnum;
          break;
        case 'committeeId':
          result.committeeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'teamId':
          result.teamId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PerProjectUserRoleVM extends PerProjectUserRoleVM {
  @override
  final PerProjectUserRoleEnum type;
  @override
  final String committeeId;
  @override
  final String teamId;

  factory _$PerProjectUserRoleVM(
          [void Function(PerProjectUserRoleVMBuilder) updates]) =>
      (new PerProjectUserRoleVMBuilder()..update(updates)).build();

  _$PerProjectUserRoleVM._({this.type, this.committeeId, this.teamId})
      : super._();

  @override
  PerProjectUserRoleVM rebuild(
          void Function(PerProjectUserRoleVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerProjectUserRoleVMBuilder toBuilder() =>
      new PerProjectUserRoleVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PerProjectUserRoleVM &&
        type == other.type &&
        committeeId == other.committeeId &&
        teamId == other.teamId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, type.hashCode), committeeId.hashCode), teamId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PerProjectUserRoleVM')
          ..add('type', type)
          ..add('committeeId', committeeId)
          ..add('teamId', teamId))
        .toString();
  }
}

class PerProjectUserRoleVMBuilder
    implements Builder<PerProjectUserRoleVM, PerProjectUserRoleVMBuilder> {
  _$PerProjectUserRoleVM _$v;

  PerProjectUserRoleEnum _type;
  PerProjectUserRoleEnum get type => _$this._type;
  set type(PerProjectUserRoleEnum type) => _$this._type = type;

  String _committeeId;
  String get committeeId => _$this._committeeId;
  set committeeId(String committeeId) => _$this._committeeId = committeeId;

  String _teamId;
  String get teamId => _$this._teamId;
  set teamId(String teamId) => _$this._teamId = teamId;

  PerProjectUserRoleVMBuilder() {
    PerProjectUserRoleVM._initializeBuilder(this);
  }

  PerProjectUserRoleVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _committeeId = $v.committeeId;
      _teamId = $v.teamId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PerProjectUserRoleVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PerProjectUserRoleVM;
  }

  @override
  void update(void Function(PerProjectUserRoleVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PerProjectUserRoleVM build() {
    final _$result = _$v ??
        new _$PerProjectUserRoleVM._(
            type: type, committeeId: committeeId, teamId: teamId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
