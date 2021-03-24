// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_extract_abstract_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectExtractAbstractVM> _$projectExtractAbstractVMSerializer =
    new _$ProjectExtractAbstractVMSerializer();

class _$ProjectExtractAbstractVMSerializer
    implements StructuredSerializer<ProjectExtractAbstractVM> {
  @override
  final Iterable<Type> types = const [
    ProjectExtractAbstractVM,
    _$ProjectExtractAbstractVM
  ];
  @override
  final String wireName = 'ProjectExtractAbstractVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProjectExtractAbstractVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.extractId;
    if (value != null) {
      result
        ..add('extractId')
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issuedAt;
    if (value != null) {
      result
        ..add('issuedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isIncoming;
    if (value != null) {
      result
        ..add('isIncoming')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ProjectExtractAbstractVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectExtractAbstractVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'extractId':
          result.extractId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuedAt':
          result.issuedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'isIncoming':
          result.isIncoming = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectExtractAbstractVM extends ProjectExtractAbstractVM {
  @override
  final String extractId;
  @override
  final String title;
  @override
  final String type;
  @override
  final DateTime issuedAt;
  @override
  final bool isIncoming;

  factory _$ProjectExtractAbstractVM(
          [void Function(ProjectExtractAbstractVMBuilder) updates]) =>
      (new ProjectExtractAbstractVMBuilder()..update(updates)).build();

  _$ProjectExtractAbstractVM._(
      {this.extractId, this.title, this.type, this.issuedAt, this.isIncoming})
      : super._();

  @override
  ProjectExtractAbstractVM rebuild(
          void Function(ProjectExtractAbstractVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectExtractAbstractVMBuilder toBuilder() =>
      new ProjectExtractAbstractVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectExtractAbstractVM &&
        extractId == other.extractId &&
        title == other.title &&
        type == other.type &&
        issuedAt == other.issuedAt &&
        isIncoming == other.isIncoming;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, extractId.hashCode), title.hashCode), type.hashCode),
            issuedAt.hashCode),
        isIncoming.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectExtractAbstractVM')
          ..add('extractId', extractId)
          ..add('title', title)
          ..add('type', type)
          ..add('issuedAt', issuedAt)
          ..add('isIncoming', isIncoming))
        .toString();
  }
}

class ProjectExtractAbstractVMBuilder
    implements
        Builder<ProjectExtractAbstractVM, ProjectExtractAbstractVMBuilder> {
  _$ProjectExtractAbstractVM _$v;

  String _extractId;
  String get extractId => _$this._extractId;
  set extractId(String extractId) => _$this._extractId = extractId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  DateTime _issuedAt;
  DateTime get issuedAt => _$this._issuedAt;
  set issuedAt(DateTime issuedAt) => _$this._issuedAt = issuedAt;

  bool _isIncoming;
  bool get isIncoming => _$this._isIncoming;
  set isIncoming(bool isIncoming) => _$this._isIncoming = isIncoming;

  ProjectExtractAbstractVMBuilder() {
    ProjectExtractAbstractVM._initializeBuilder(this);
  }

  ProjectExtractAbstractVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extractId = $v.extractId;
      _title = $v.title;
      _type = $v.type;
      _issuedAt = $v.issuedAt;
      _isIncoming = $v.isIncoming;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectExtractAbstractVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectExtractAbstractVM;
  }

  @override
  void update(void Function(ProjectExtractAbstractVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectExtractAbstractVM build() {
    final _$result = _$v ??
        new _$ProjectExtractAbstractVM._(
            extractId: extractId,
            title: title,
            type: type,
            issuedAt: issuedAt,
            isIncoming: isIncoming);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
