// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_team_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectTeamVM> _$projectTeamVMSerializer =
    new _$ProjectTeamVMSerializer();

class _$ProjectTeamVMSerializer implements StructuredSerializer<ProjectTeamVM> {
  @override
  final Iterable<Type> types = const [ProjectTeamVM, _$ProjectTeamVM];
  @override
  final String wireName = 'ProjectTeamVM';

  @override
  Iterable<Object> serialize(Serializers serializers, ProjectTeamVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.isDone;
    if (value != null) {
      result
        ..add('isDone')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isLate;
    if (value != null) {
      result
        ..add('isLate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.plannedStart;
    if (value != null) {
      result
        ..add('plannedStart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.plannedDurationDays;
    if (value != null) {
      result
        ..add('plannedDurationDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.plannedEnd;
    if (value != null) {
      result
        ..add('plannedEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.actualEnd;
    if (value != null) {
      result
        ..add('actualEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dangerPercent;
    if (value != null) {
      result
        ..add('dangerPercent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
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
    value = object.tasks;
    if (value != null) {
      result
        ..add('tasks')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProjectAbstractTaskVM)])));
    }
    value = object.members;
    if (value != null) {
      result
        ..add('members')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(UserViewModel)])));
    }
    return result;
  }

  @override
  ProjectTeamVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectTeamVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'isDone':
          result.isDone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isLate':
          result.isLate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'plannedStart':
          result.plannedStart = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'plannedDurationDays':
          result.plannedDurationDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'plannedEnd':
          result.plannedEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'actualEnd':
          result.actualEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'dangerPercent':
          result.dangerPercent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'teamId':
          result.teamId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'teamName':
          result.teamName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tasks':
          result.tasks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ProjectAbstractTaskVM)]))
              as BuiltList<Object>);
          break;
        case 'members':
          result.members.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UserViewModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectTeamVM extends ProjectTeamVM {
  @override
  final bool isDone;
  @override
  final bool isLate;
  @override
  final DateTime plannedStart;
  @override
  final int plannedDurationDays;
  @override
  final DateTime plannedEnd;
  @override
  final DateTime actualEnd;
  @override
  final double dangerPercent;
  @override
  final String teamId;
  @override
  final String teamName;
  @override
  final BuiltList<ProjectAbstractTaskVM> tasks;
  @override
  final BuiltList<UserViewModel> members;

  factory _$ProjectTeamVM([void Function(ProjectTeamVMBuilder) updates]) =>
      (new ProjectTeamVMBuilder()..update(updates)).build();

  _$ProjectTeamVM._(
      {this.isDone,
      this.isLate,
      this.plannedStart,
      this.plannedDurationDays,
      this.plannedEnd,
      this.actualEnd,
      this.dangerPercent,
      this.teamId,
      this.teamName,
      this.tasks,
      this.members})
      : super._();

  @override
  ProjectTeamVM rebuild(void Function(ProjectTeamVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectTeamVMBuilder toBuilder() => new ProjectTeamVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectTeamVM &&
        isDone == other.isDone &&
        isLate == other.isLate &&
        plannedStart == other.plannedStart &&
        plannedDurationDays == other.plannedDurationDays &&
        plannedEnd == other.plannedEnd &&
        actualEnd == other.actualEnd &&
        dangerPercent == other.dangerPercent &&
        teamId == other.teamId &&
        teamName == other.teamName &&
        tasks == other.tasks &&
        members == other.members;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, isDone.hashCode),
                                            isLate.hashCode),
                                        plannedStart.hashCode),
                                    plannedDurationDays.hashCode),
                                plannedEnd.hashCode),
                            actualEnd.hashCode),
                        dangerPercent.hashCode),
                    teamId.hashCode),
                teamName.hashCode),
            tasks.hashCode),
        members.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectTeamVM')
          ..add('isDone', isDone)
          ..add('isLate', isLate)
          ..add('plannedStart', plannedStart)
          ..add('plannedDurationDays', plannedDurationDays)
          ..add('plannedEnd', plannedEnd)
          ..add('actualEnd', actualEnd)
          ..add('dangerPercent', dangerPercent)
          ..add('teamId', teamId)
          ..add('teamName', teamName)
          ..add('tasks', tasks)
          ..add('members', members))
        .toString();
  }
}

class ProjectTeamVMBuilder
    implements Builder<ProjectTeamVM, ProjectTeamVMBuilder> {
  _$ProjectTeamVM _$v;

  bool _isDone;
  bool get isDone => _$this._isDone;
  set isDone(bool isDone) => _$this._isDone = isDone;

  bool _isLate;
  bool get isLate => _$this._isLate;
  set isLate(bool isLate) => _$this._isLate = isLate;

  DateTime _plannedStart;
  DateTime get plannedStart => _$this._plannedStart;
  set plannedStart(DateTime plannedStart) =>
      _$this._plannedStart = plannedStart;

  int _plannedDurationDays;
  int get plannedDurationDays => _$this._plannedDurationDays;
  set plannedDurationDays(int plannedDurationDays) =>
      _$this._plannedDurationDays = plannedDurationDays;

  DateTime _plannedEnd;
  DateTime get plannedEnd => _$this._plannedEnd;
  set plannedEnd(DateTime plannedEnd) => _$this._plannedEnd = plannedEnd;

  DateTime _actualEnd;
  DateTime get actualEnd => _$this._actualEnd;
  set actualEnd(DateTime actualEnd) => _$this._actualEnd = actualEnd;

  double _dangerPercent;
  double get dangerPercent => _$this._dangerPercent;
  set dangerPercent(double dangerPercent) =>
      _$this._dangerPercent = dangerPercent;

  String _teamId;
  String get teamId => _$this._teamId;
  set teamId(String teamId) => _$this._teamId = teamId;

  String _teamName;
  String get teamName => _$this._teamName;
  set teamName(String teamName) => _$this._teamName = teamName;

  ListBuilder<ProjectAbstractTaskVM> _tasks;
  ListBuilder<ProjectAbstractTaskVM> get tasks =>
      _$this._tasks ??= new ListBuilder<ProjectAbstractTaskVM>();
  set tasks(ListBuilder<ProjectAbstractTaskVM> tasks) => _$this._tasks = tasks;

  ListBuilder<UserViewModel> _members;
  ListBuilder<UserViewModel> get members =>
      _$this._members ??= new ListBuilder<UserViewModel>();
  set members(ListBuilder<UserViewModel> members) => _$this._members = members;

  ProjectTeamVMBuilder() {
    ProjectTeamVM._initializeBuilder(this);
  }

  ProjectTeamVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isDone = $v.isDone;
      _isLate = $v.isLate;
      _plannedStart = $v.plannedStart;
      _plannedDurationDays = $v.plannedDurationDays;
      _plannedEnd = $v.plannedEnd;
      _actualEnd = $v.actualEnd;
      _dangerPercent = $v.dangerPercent;
      _teamId = $v.teamId;
      _teamName = $v.teamName;
      _tasks = $v.tasks?.toBuilder();
      _members = $v.members?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectTeamVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectTeamVM;
  }

  @override
  void update(void Function(ProjectTeamVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectTeamVM build() {
    _$ProjectTeamVM _$result;
    try {
      _$result = _$v ??
          new _$ProjectTeamVM._(
              isDone: isDone,
              isLate: isLate,
              plannedStart: plannedStart,
              plannedDurationDays: plannedDurationDays,
              plannedEnd: plannedEnd,
              actualEnd: actualEnd,
              dangerPercent: dangerPercent,
              teamId: teamId,
              teamName: teamName,
              tasks: _tasks?.build(),
              members: _members?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tasks';
        _tasks?.build();
        _$failedField = 'members';
        _members?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectTeamVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
