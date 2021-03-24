// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'req_team_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqTeamVM> _$reqTeamVMSerializer = new _$ReqTeamVMSerializer();

class _$ReqTeamVMSerializer implements StructuredSerializer<ReqTeamVM> {
  @override
  final Iterable<Type> types = const [ReqTeamVM, _$ReqTeamVM];
  @override
  final String wireName = 'ReqTeamVM';

  @override
  Iterable<Object> serialize(Serializers serializers, ReqTeamVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.teamId;
    if (value != null) {
      result
        ..add('teamId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teamName;
    if (value != null) {
      result
        ..add('teamName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReqTeamVM deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReqTeamVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'teamId':
          result.teamId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'teamName':
          result.teamName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReqTeamVM extends ReqTeamVM {
  @override
  final String teamId;
  @override
  final String teamName;

  factory _$ReqTeamVM([void Function(ReqTeamVMBuilder) updates]) =>
      (new ReqTeamVMBuilder()..update(updates)).build();

  _$ReqTeamVM._({this.teamId, this.teamName}) : super._();

  @override
  ReqTeamVM rebuild(void Function(ReqTeamVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqTeamVMBuilder toBuilder() => new ReqTeamVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqTeamVM &&
        teamId == other.teamId &&
        teamName == other.teamName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, teamId.hashCode), teamName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReqTeamVM')
          ..add('teamId', teamId)
          ..add('teamName', teamName))
        .toString();
  }
}

class ReqTeamVMBuilder implements Builder<ReqTeamVM, ReqTeamVMBuilder> {
  _$ReqTeamVM _$v;

  String _teamId;
  String get teamId => _$this._teamId;
  set teamId(String teamId) => _$this._teamId = teamId;

  String _teamName;
  String get teamName => _$this._teamName;
  set teamName(String teamName) => _$this._teamName = teamName;

  ReqTeamVMBuilder() {
    ReqTeamVM._initializeBuilder(this);
  }

  ReqTeamVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _teamId = $v.teamId;
      _teamName = $v.teamName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqTeamVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqTeamVM;
  }

  @override
  void update(void Function(ReqTeamVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReqTeamVM build() {
    final _$result =
        _$v ?? new _$ReqTeamVM._(teamId: teamId, teamName: teamName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
