// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_abstract_task_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectAbstractTaskVM> _$projectAbstractTaskVMSerializer =
    new _$ProjectAbstractTaskVMSerializer();

class _$ProjectAbstractTaskVMSerializer
    implements StructuredSerializer<ProjectAbstractTaskVM> {
  @override
  final Iterable<Type> types = const [
    ProjectAbstractTaskVM,
    _$ProjectAbstractTaskVM
  ];
  @override
  final String wireName = 'ProjectAbstractTaskVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProjectAbstractTaskVM object,
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
    value = object.taskId;
    if (value != null) {
      result
        ..add('taskId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isReceiveTask;
    if (value != null) {
      result
        ..add('isReceiveTask')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.colorInfo;
    if (value != null) {
      result
        ..add('colorInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ColoredDangerZoneVM)));
    }
    return result;
  }

  @override
  ProjectAbstractTaskVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectAbstractTaskVMBuilder();

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
        case 'taskId':
          result.taskId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isReceiveTask':
          result.isReceiveTask = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'colorInfo':
          result.colorInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ColoredDangerZoneVM))
              as ColoredDangerZoneVM);
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectAbstractTaskVM extends ProjectAbstractTaskVM {
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
  final String taskId;
  @override
  final String title;
  @override
  final String notes;
  @override
  final bool isReceiveTask;
  @override
  final ColoredDangerZoneVM colorInfo;

  factory _$ProjectAbstractTaskVM(
          [void Function(ProjectAbstractTaskVMBuilder) updates]) =>
      (new ProjectAbstractTaskVMBuilder()..update(updates)).build();

  _$ProjectAbstractTaskVM._(
      {this.isDone,
      this.isLate,
      this.plannedStart,
      this.plannedDurationDays,
      this.plannedEnd,
      this.actualEnd,
      this.dangerPercent,
      this.taskId,
      this.title,
      this.notes,
      this.isReceiveTask,
      this.colorInfo})
      : super._();

  @override
  ProjectAbstractTaskVM rebuild(
          void Function(ProjectAbstractTaskVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectAbstractTaskVMBuilder toBuilder() =>
      new ProjectAbstractTaskVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectAbstractTaskVM &&
        isDone == other.isDone &&
        isLate == other.isLate &&
        plannedStart == other.plannedStart &&
        plannedDurationDays == other.plannedDurationDays &&
        plannedEnd == other.plannedEnd &&
        actualEnd == other.actualEnd &&
        dangerPercent == other.dangerPercent &&
        taskId == other.taskId &&
        title == other.title &&
        notes == other.notes &&
        isReceiveTask == other.isReceiveTask &&
        colorInfo == other.colorInfo;
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
                                            $jc($jc(0, isDone.hashCode),
                                                isLate.hashCode),
                                            plannedStart.hashCode),
                                        plannedDurationDays.hashCode),
                                    plannedEnd.hashCode),
                                actualEnd.hashCode),
                            dangerPercent.hashCode),
                        taskId.hashCode),
                    title.hashCode),
                notes.hashCode),
            isReceiveTask.hashCode),
        colorInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectAbstractTaskVM')
          ..add('isDone', isDone)
          ..add('isLate', isLate)
          ..add('plannedStart', plannedStart)
          ..add('plannedDurationDays', plannedDurationDays)
          ..add('plannedEnd', plannedEnd)
          ..add('actualEnd', actualEnd)
          ..add('dangerPercent', dangerPercent)
          ..add('taskId', taskId)
          ..add('title', title)
          ..add('notes', notes)
          ..add('isReceiveTask', isReceiveTask)
          ..add('colorInfo', colorInfo))
        .toString();
  }
}

class ProjectAbstractTaskVMBuilder
    implements Builder<ProjectAbstractTaskVM, ProjectAbstractTaskVMBuilder> {
  _$ProjectAbstractTaskVM _$v;

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

  String _taskId;
  String get taskId => _$this._taskId;
  set taskId(String taskId) => _$this._taskId = taskId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  bool _isReceiveTask;
  bool get isReceiveTask => _$this._isReceiveTask;
  set isReceiveTask(bool isReceiveTask) =>
      _$this._isReceiveTask = isReceiveTask;

  ColoredDangerZoneVMBuilder _colorInfo;
  ColoredDangerZoneVMBuilder get colorInfo =>
      _$this._colorInfo ??= new ColoredDangerZoneVMBuilder();
  set colorInfo(ColoredDangerZoneVMBuilder colorInfo) =>
      _$this._colorInfo = colorInfo;

  ProjectAbstractTaskVMBuilder() {
    ProjectAbstractTaskVM._initializeBuilder(this);
  }

  ProjectAbstractTaskVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isDone = $v.isDone;
      _isLate = $v.isLate;
      _plannedStart = $v.plannedStart;
      _plannedDurationDays = $v.plannedDurationDays;
      _plannedEnd = $v.plannedEnd;
      _actualEnd = $v.actualEnd;
      _dangerPercent = $v.dangerPercent;
      _taskId = $v.taskId;
      _title = $v.title;
      _notes = $v.notes;
      _isReceiveTask = $v.isReceiveTask;
      _colorInfo = $v.colorInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectAbstractTaskVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectAbstractTaskVM;
  }

  @override
  void update(void Function(ProjectAbstractTaskVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectAbstractTaskVM build() {
    _$ProjectAbstractTaskVM _$result;
    try {
      _$result = _$v ??
          new _$ProjectAbstractTaskVM._(
              isDone: isDone,
              isLate: isLate,
              plannedStart: plannedStart,
              plannedDurationDays: plannedDurationDays,
              plannedEnd: plannedEnd,
              actualEnd: actualEnd,
              dangerPercent: dangerPercent,
              taskId: taskId,
              title: title,
              notes: notes,
              isReceiveTask: isReceiveTask,
              colorInfo: _colorInfo?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'colorInfo';
        _colorInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectAbstractTaskVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
