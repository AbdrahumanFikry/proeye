// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_abstract_committee_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectAbstractCommitteeVM> _$projectAbstractCommitteeVMSerializer =
    new _$ProjectAbstractCommitteeVMSerializer();

class _$ProjectAbstractCommitteeVMSerializer
    implements StructuredSerializer<ProjectAbstractCommitteeVM> {
  @override
  final Iterable<Type> types = const [
    ProjectAbstractCommitteeVM,
    _$ProjectAbstractCommitteeVM
  ];
  @override
  final String wireName = 'ProjectAbstractCommitteeVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProjectAbstractCommitteeVM object,
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
    value = object.committeeId;
    if (value != null) {
      result
        ..add('committeeId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.committeeName;
    if (value != null) {
      result
        ..add('committeeName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.committeeDirector;
    if (value != null) {
      result
        ..add('committeeDirector')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserViewModel)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.committeeType;
    if (value != null) {
      result
        ..add('committeeType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CommitteeTypeEnum)));
    }
    value = object.taskDangerZones;
    if (value != null) {
      result
        ..add('taskDangerZones')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ColoredDangerZoneVM)])));
    }
    return result;
  }

  @override
  ProjectAbstractCommitteeVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectAbstractCommitteeVMBuilder();

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
        case 'committeeId':
          result.committeeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'committeeName':
          result.committeeName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'committeeDirector':
          result.committeeDirector.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserViewModel)) as UserViewModel);
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'committeeType':
          result.committeeType = serializers.deserialize(value,
                  specifiedType: const FullType(CommitteeTypeEnum))
              as CommitteeTypeEnum;
          break;
        case 'taskDangerZones':
          result.taskDangerZones.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ColoredDangerZoneVM)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectAbstractCommitteeVM extends ProjectAbstractCommitteeVM {
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
  final String committeeId;
  @override
  final String committeeName;
  @override
  final UserViewModel committeeDirector;
  @override
  final int order;
  @override
  final CommitteeTypeEnum committeeType;
  @override
  final BuiltList<ColoredDangerZoneVM> taskDangerZones;

  factory _$ProjectAbstractCommitteeVM(
          [void Function(ProjectAbstractCommitteeVMBuilder) updates]) =>
      (new ProjectAbstractCommitteeVMBuilder()..update(updates)).build();

  _$ProjectAbstractCommitteeVM._(
      {this.isDone,
      this.isLate,
      this.plannedStart,
      this.plannedDurationDays,
      this.plannedEnd,
      this.actualEnd,
      this.dangerPercent,
      this.committeeId,
      this.committeeName,
      this.committeeDirector,
      this.order,
      this.committeeType,
      this.taskDangerZones})
      : super._();

  @override
  ProjectAbstractCommitteeVM rebuild(
          void Function(ProjectAbstractCommitteeVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectAbstractCommitteeVMBuilder toBuilder() =>
      new ProjectAbstractCommitteeVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectAbstractCommitteeVM &&
        isDone == other.isDone &&
        isLate == other.isLate &&
        plannedStart == other.plannedStart &&
        plannedDurationDays == other.plannedDurationDays &&
        plannedEnd == other.plannedEnd &&
        actualEnd == other.actualEnd &&
        dangerPercent == other.dangerPercent &&
        committeeId == other.committeeId &&
        committeeName == other.committeeName &&
        committeeDirector == other.committeeDirector &&
        order == other.order &&
        committeeType == other.committeeType &&
        taskDangerZones == other.taskDangerZones;
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
                                        $jc(
                                            $jc(
                                                $jc($jc(0, isDone.hashCode),
                                                    isLate.hashCode),
                                                plannedStart.hashCode),
                                            plannedDurationDays.hashCode),
                                        plannedEnd.hashCode),
                                    actualEnd.hashCode),
                                dangerPercent.hashCode),
                            committeeId.hashCode),
                        committeeName.hashCode),
                    committeeDirector.hashCode),
                order.hashCode),
            committeeType.hashCode),
        taskDangerZones.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectAbstractCommitteeVM')
          ..add('isDone', isDone)
          ..add('isLate', isLate)
          ..add('plannedStart', plannedStart)
          ..add('plannedDurationDays', plannedDurationDays)
          ..add('plannedEnd', plannedEnd)
          ..add('actualEnd', actualEnd)
          ..add('dangerPercent', dangerPercent)
          ..add('committeeId', committeeId)
          ..add('committeeName', committeeName)
          ..add('committeeDirector', committeeDirector)
          ..add('order', order)
          ..add('committeeType', committeeType)
          ..add('taskDangerZones', taskDangerZones))
        .toString();
  }
}

class ProjectAbstractCommitteeVMBuilder
    implements
        Builder<ProjectAbstractCommitteeVM, ProjectAbstractCommitteeVMBuilder> {
  _$ProjectAbstractCommitteeVM _$v;

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

  String _committeeId;
  String get committeeId => _$this._committeeId;
  set committeeId(String committeeId) => _$this._committeeId = committeeId;

  String _committeeName;
  String get committeeName => _$this._committeeName;
  set committeeName(String committeeName) =>
      _$this._committeeName = committeeName;

  UserViewModelBuilder _committeeDirector;
  UserViewModelBuilder get committeeDirector =>
      _$this._committeeDirector ??= new UserViewModelBuilder();
  set committeeDirector(UserViewModelBuilder committeeDirector) =>
      _$this._committeeDirector = committeeDirector;

  int _order;
  int get order => _$this._order;
  set order(int order) => _$this._order = order;

  CommitteeTypeEnum _committeeType;
  CommitteeTypeEnum get committeeType => _$this._committeeType;
  set committeeType(CommitteeTypeEnum committeeType) =>
      _$this._committeeType = committeeType;

  ListBuilder<ColoredDangerZoneVM> _taskDangerZones;
  ListBuilder<ColoredDangerZoneVM> get taskDangerZones =>
      _$this._taskDangerZones ??= new ListBuilder<ColoredDangerZoneVM>();
  set taskDangerZones(ListBuilder<ColoredDangerZoneVM> taskDangerZones) =>
      _$this._taskDangerZones = taskDangerZones;

  ProjectAbstractCommitteeVMBuilder() {
    ProjectAbstractCommitteeVM._initializeBuilder(this);
  }

  ProjectAbstractCommitteeVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isDone = $v.isDone;
      _isLate = $v.isLate;
      _plannedStart = $v.plannedStart;
      _plannedDurationDays = $v.plannedDurationDays;
      _plannedEnd = $v.plannedEnd;
      _actualEnd = $v.actualEnd;
      _dangerPercent = $v.dangerPercent;
      _committeeId = $v.committeeId;
      _committeeName = $v.committeeName;
      _committeeDirector = $v.committeeDirector?.toBuilder();
      _order = $v.order;
      _committeeType = $v.committeeType;
      _taskDangerZones = $v.taskDangerZones?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectAbstractCommitteeVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectAbstractCommitteeVM;
  }

  @override
  void update(void Function(ProjectAbstractCommitteeVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectAbstractCommitteeVM build() {
    _$ProjectAbstractCommitteeVM _$result;
    try {
      _$result = _$v ??
          new _$ProjectAbstractCommitteeVM._(
              isDone: isDone,
              isLate: isLate,
              plannedStart: plannedStart,
              plannedDurationDays: plannedDurationDays,
              plannedEnd: plannedEnd,
              actualEnd: actualEnd,
              dangerPercent: dangerPercent,
              committeeId: committeeId,
              committeeName: committeeName,
              committeeDirector: _committeeDirector?.build(),
              order: order,
              committeeType: committeeType,
              taskDangerZones: _taskDangerZones?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'committeeDirector';
        _committeeDirector?.build();

        _$failedField = 'taskDangerZones';
        _taskDangerZones?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectAbstractCommitteeVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
