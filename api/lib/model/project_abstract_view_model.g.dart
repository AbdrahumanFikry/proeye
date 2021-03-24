// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_abstract_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectAbstractViewModel> _$projectAbstractViewModelSerializer =
    new _$ProjectAbstractViewModelSerializer();

class _$ProjectAbstractViewModelSerializer
    implements StructuredSerializer<ProjectAbstractViewModel> {
  @override
  final Iterable<Type> types = const [
    ProjectAbstractViewModel,
    _$ProjectAbstractViewModel
  ];
  @override
  final String wireName = 'ProjectAbstractViewModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProjectAbstractViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.userRelations;
    if (value != null) {
      result
        ..add('userRelations')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(PerProjectUserRoleVM)])));
    }
    value = object.projectId;
    if (value != null) {
      result
        ..add('projectId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectName;
    if (value != null) {
      result
        ..add('projectName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectCode;
    if (value != null) {
      result
        ..add('projectCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ownerCompanyName;
    if (value != null) {
      result
        ..add('ownerCompanyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.executerCompanyName;
    if (value != null) {
      result
        ..add('executerCompanyName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.actualEnd;
    if (value != null) {
      result
        ..add('actualEnd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ProjectAbstractViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectAbstractViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'userRelations':
          result.userRelations.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(PerProjectUserRoleVM)]))
              as BuiltList<Object>);
          break;
        case 'projectId':
          result.projectId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectName':
          result.projectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectCode':
          result.projectCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ownerCompanyName':
          result.ownerCompanyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'executerCompanyName':
          result.executerCompanyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'actualEnd':
          result.actualEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$ProjectAbstractViewModel extends ProjectAbstractViewModel {
  @override
  final BuiltList<PerProjectUserRoleVM> userRelations;
  @override
  final String projectId;
  @override
  final String projectName;
  @override
  final String projectCode;
  @override
  final String ownerCompanyName;
  @override
  final String executerCompanyName;
  @override
  final DateTime actualEnd;
  @override
  final BuiltList<ColoredDangerZoneVM> taskDangerZones;

  factory _$ProjectAbstractViewModel(
          [void Function(ProjectAbstractViewModelBuilder) updates]) =>
      (new ProjectAbstractViewModelBuilder()..update(updates)).build();

  _$ProjectAbstractViewModel._(
      {this.userRelations,
      this.projectId,
      this.projectName,
      this.projectCode,
      this.ownerCompanyName,
      this.executerCompanyName,
      this.actualEnd,
      this.taskDangerZones})
      : super._();

  @override
  ProjectAbstractViewModel rebuild(
          void Function(ProjectAbstractViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectAbstractViewModelBuilder toBuilder() =>
      new ProjectAbstractViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectAbstractViewModel &&
        userRelations == other.userRelations &&
        projectId == other.projectId &&
        projectName == other.projectName &&
        projectCode == other.projectCode &&
        ownerCompanyName == other.ownerCompanyName &&
        executerCompanyName == other.executerCompanyName &&
        actualEnd == other.actualEnd &&
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
                            $jc($jc(0, userRelations.hashCode),
                                projectId.hashCode),
                            projectName.hashCode),
                        projectCode.hashCode),
                    ownerCompanyName.hashCode),
                executerCompanyName.hashCode),
            actualEnd.hashCode),
        taskDangerZones.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectAbstractViewModel')
          ..add('userRelations', userRelations)
          ..add('projectId', projectId)
          ..add('projectName', projectName)
          ..add('projectCode', projectCode)
          ..add('ownerCompanyName', ownerCompanyName)
          ..add('executerCompanyName', executerCompanyName)
          ..add('actualEnd', actualEnd)
          ..add('taskDangerZones', taskDangerZones))
        .toString();
  }
}

class ProjectAbstractViewModelBuilder
    implements
        Builder<ProjectAbstractViewModel, ProjectAbstractViewModelBuilder> {
  _$ProjectAbstractViewModel _$v;

  ListBuilder<PerProjectUserRoleVM> _userRelations;
  ListBuilder<PerProjectUserRoleVM> get userRelations =>
      _$this._userRelations ??= new ListBuilder<PerProjectUserRoleVM>();
  set userRelations(ListBuilder<PerProjectUserRoleVM> userRelations) =>
      _$this._userRelations = userRelations;

  String _projectId;
  String get projectId => _$this._projectId;
  set projectId(String projectId) => _$this._projectId = projectId;

  String _projectName;
  String get projectName => _$this._projectName;
  set projectName(String projectName) => _$this._projectName = projectName;

  String _projectCode;
  String get projectCode => _$this._projectCode;
  set projectCode(String projectCode) => _$this._projectCode = projectCode;

  String _ownerCompanyName;
  String get ownerCompanyName => _$this._ownerCompanyName;
  set ownerCompanyName(String ownerCompanyName) =>
      _$this._ownerCompanyName = ownerCompanyName;

  String _executerCompanyName;
  String get executerCompanyName => _$this._executerCompanyName;
  set executerCompanyName(String executerCompanyName) =>
      _$this._executerCompanyName = executerCompanyName;

  DateTime _actualEnd;
  DateTime get actualEnd => _$this._actualEnd;
  set actualEnd(DateTime actualEnd) => _$this._actualEnd = actualEnd;

  ListBuilder<ColoredDangerZoneVM> _taskDangerZones;
  ListBuilder<ColoredDangerZoneVM> get taskDangerZones =>
      _$this._taskDangerZones ??= new ListBuilder<ColoredDangerZoneVM>();
  set taskDangerZones(ListBuilder<ColoredDangerZoneVM> taskDangerZones) =>
      _$this._taskDangerZones = taskDangerZones;

  ProjectAbstractViewModelBuilder() {
    ProjectAbstractViewModel._initializeBuilder(this);
  }

  ProjectAbstractViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRelations = $v.userRelations?.toBuilder();
      _projectId = $v.projectId;
      _projectName = $v.projectName;
      _projectCode = $v.projectCode;
      _ownerCompanyName = $v.ownerCompanyName;
      _executerCompanyName = $v.executerCompanyName;
      _actualEnd = $v.actualEnd;
      _taskDangerZones = $v.taskDangerZones?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectAbstractViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectAbstractViewModel;
  }

  @override
  void update(void Function(ProjectAbstractViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectAbstractViewModel build() {
    _$ProjectAbstractViewModel _$result;
    try {
      _$result = _$v ??
          new _$ProjectAbstractViewModel._(
              userRelations: _userRelations?.build(),
              projectId: projectId,
              projectName: projectName,
              projectCode: projectCode,
              ownerCompanyName: ownerCompanyName,
              executerCompanyName: executerCompanyName,
              actualEnd: actualEnd,
              taskDangerZones: _taskDangerZones?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userRelations';
        _userRelations?.build();

        _$failedField = 'taskDangerZones';
        _taskDangerZones?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectAbstractViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
