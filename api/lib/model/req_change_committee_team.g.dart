// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'req_change_committee_team.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqChangeCommitteeTeam> _$reqChangeCommitteeTeamSerializer =
    new _$ReqChangeCommitteeTeamSerializer();

class _$ReqChangeCommitteeTeamSerializer
    implements StructuredSerializer<ReqChangeCommitteeTeam> {
  @override
  final Iterable<Type> types = const [
    ReqChangeCommitteeTeam,
    _$ReqChangeCommitteeTeam
  ];
  @override
  final String wireName = 'ReqChangeCommitteeTeam';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReqChangeCommitteeTeam object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.teams;
    if (value != null) {
      result
        ..add('teams')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(ReqTeamVM)])));
    }
    value = object.files;
    if (value != null) {
      result
        ..add('files')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ReqChangeCommitteeTeam deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReqChangeCommitteeTeamBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'teams':
          result.teams.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ReqTeamVM)]))
              as BuiltList<Object>);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReqChangeCommitteeTeam extends ReqChangeCommitteeTeam {
  @override
  final BuiltList<ReqTeamVM> teams;
  @override
  final BuiltList<String> files;

  factory _$ReqChangeCommitteeTeam(
          [void Function(ReqChangeCommitteeTeamBuilder) updates]) =>
      (new ReqChangeCommitteeTeamBuilder()..update(updates)).build();

  _$ReqChangeCommitteeTeam._({this.teams, this.files}) : super._();

  @override
  ReqChangeCommitteeTeam rebuild(
          void Function(ReqChangeCommitteeTeamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqChangeCommitteeTeamBuilder toBuilder() =>
      new ReqChangeCommitteeTeamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqChangeCommitteeTeam &&
        teams == other.teams &&
        files == other.files;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, teams.hashCode), files.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReqChangeCommitteeTeam')
          ..add('teams', teams)
          ..add('files', files))
        .toString();
  }
}

class ReqChangeCommitteeTeamBuilder
    implements Builder<ReqChangeCommitteeTeam, ReqChangeCommitteeTeamBuilder> {
  _$ReqChangeCommitteeTeam _$v;

  ListBuilder<ReqTeamVM> _teams;
  ListBuilder<ReqTeamVM> get teams =>
      _$this._teams ??= new ListBuilder<ReqTeamVM>();
  set teams(ListBuilder<ReqTeamVM> teams) => _$this._teams = teams;

  ListBuilder<String> _files;
  ListBuilder<String> get files => _$this._files ??= new ListBuilder<String>();
  set files(ListBuilder<String> files) => _$this._files = files;

  ReqChangeCommitteeTeamBuilder() {
    ReqChangeCommitteeTeam._initializeBuilder(this);
  }

  ReqChangeCommitteeTeamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _teams = $v.teams?.toBuilder();
      _files = $v.files?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqChangeCommitteeTeam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqChangeCommitteeTeam;
  }

  @override
  void update(void Function(ReqChangeCommitteeTeamBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReqChangeCommitteeTeam build() {
    _$ReqChangeCommitteeTeam _$result;
    try {
      _$result = _$v ??
          new _$ReqChangeCommitteeTeam._(
              teams: _teams?.build(), files: _files?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'teams';
        _teams?.build();
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReqChangeCommitteeTeam', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
