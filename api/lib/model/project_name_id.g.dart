// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_name_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectNameId> _$projectNameIdSerializer =
    new _$ProjectNameIdSerializer();

class _$ProjectNameIdSerializer implements StructuredSerializer<ProjectNameId> {
  @override
  final Iterable<Type> types = const [ProjectNameId, _$ProjectNameId];
  @override
  final String wireName = 'ProjectNameId';

  @override
  Iterable<Object> serialize(Serializers serializers, ProjectNameId object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
    return result;
  }

  @override
  ProjectNameId deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectNameIdBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'projectId':
          result.projectId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'projectName':
          result.projectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectNameId extends ProjectNameId {
  @override
  final String projectId;
  @override
  final String projectName;

  factory _$ProjectNameId([void Function(ProjectNameIdBuilder) updates]) =>
      (new ProjectNameIdBuilder()..update(updates)).build();

  _$ProjectNameId._({this.projectId, this.projectName}) : super._();

  @override
  ProjectNameId rebuild(void Function(ProjectNameIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectNameIdBuilder toBuilder() => new ProjectNameIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectNameId &&
        projectId == other.projectId &&
        projectName == other.projectName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, projectId.hashCode), projectName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectNameId')
          ..add('projectId', projectId)
          ..add('projectName', projectName))
        .toString();
  }
}

class ProjectNameIdBuilder
    implements Builder<ProjectNameId, ProjectNameIdBuilder> {
  _$ProjectNameId _$v;

  String _projectId;
  String get projectId => _$this._projectId;
  set projectId(String projectId) => _$this._projectId = projectId;

  String _projectName;
  String get projectName => _$this._projectName;
  set projectName(String projectName) => _$this._projectName = projectName;

  ProjectNameIdBuilder() {
    ProjectNameId._initializeBuilder(this);
  }

  ProjectNameIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectId = $v.projectId;
      _projectName = $v.projectName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectNameId other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectNameId;
  }

  @override
  void update(void Function(ProjectNameIdBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectNameId build() {
    final _$result = _$v ??
        new _$ProjectNameId._(projectId: projectId, projectName: projectName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
