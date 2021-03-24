// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_extract_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectExtractVM> _$projectExtractVMSerializer =
    new _$ProjectExtractVMSerializer();

class _$ProjectExtractVMSerializer
    implements StructuredSerializer<ProjectExtractVM> {
  @override
  final Iterable<Type> types = const [ProjectExtractVM, _$ProjectExtractVM];
  @override
  final String wireName = 'ProjectExtractVM';

  @override
  Iterable<Object> serialize(Serializers serializers, ProjectExtractVM object,
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
    value = object.issuer;
    if (value != null) {
      result
        ..add('issuer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserViewModel)));
    }
    value = object.files;
    if (value != null) {
      result
        ..add('files')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(AppFileViewModel)])));
    }
    value = object.targets;
    if (value != null) {
      result
        ..add('targets')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ExtractTargetVM)])));
    }
    return result;
  }

  @override
  ProjectExtractVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectExtractVMBuilder();

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
        case 'issuer':
          result.issuer.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserViewModel)) as UserViewModel);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AppFileViewModel)]))
              as BuiltList<Object>);
          break;
        case 'targets':
          result.targets.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ExtractTargetVM)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectExtractVM extends ProjectExtractVM {
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
  @override
  final UserViewModel issuer;
  @override
  final BuiltList<AppFileViewModel> files;
  @override
  final BuiltList<ExtractTargetVM> targets;

  factory _$ProjectExtractVM(
          [void Function(ProjectExtractVMBuilder) updates]) =>
      (new ProjectExtractVMBuilder()..update(updates)).build();

  _$ProjectExtractVM._(
      {this.extractId,
      this.title,
      this.type,
      this.issuedAt,
      this.isIncoming,
      this.issuer,
      this.files,
      this.targets})
      : super._();

  @override
  ProjectExtractVM rebuild(void Function(ProjectExtractVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectExtractVMBuilder toBuilder() =>
      new ProjectExtractVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectExtractVM &&
        extractId == other.extractId &&
        title == other.title &&
        type == other.type &&
        issuedAt == other.issuedAt &&
        isIncoming == other.isIncoming &&
        issuer == other.issuer &&
        files == other.files &&
        targets == other.targets;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, extractId.hashCode), title.hashCode),
                            type.hashCode),
                        issuedAt.hashCode),
                    isIncoming.hashCode),
                issuer.hashCode),
            files.hashCode),
        targets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectExtractVM')
          ..add('extractId', extractId)
          ..add('title', title)
          ..add('type', type)
          ..add('issuedAt', issuedAt)
          ..add('isIncoming', isIncoming)
          ..add('issuer', issuer)
          ..add('files', files)
          ..add('targets', targets))
        .toString();
  }
}

class ProjectExtractVMBuilder
    implements Builder<ProjectExtractVM, ProjectExtractVMBuilder> {
  _$ProjectExtractVM _$v;

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

  UserViewModelBuilder _issuer;
  UserViewModelBuilder get issuer =>
      _$this._issuer ??= new UserViewModelBuilder();
  set issuer(UserViewModelBuilder issuer) => _$this._issuer = issuer;

  ListBuilder<AppFileViewModel> _files;
  ListBuilder<AppFileViewModel> get files =>
      _$this._files ??= new ListBuilder<AppFileViewModel>();
  set files(ListBuilder<AppFileViewModel> files) => _$this._files = files;

  ListBuilder<ExtractTargetVM> _targets;
  ListBuilder<ExtractTargetVM> get targets =>
      _$this._targets ??= new ListBuilder<ExtractTargetVM>();
  set targets(ListBuilder<ExtractTargetVM> targets) =>
      _$this._targets = targets;

  ProjectExtractVMBuilder() {
    ProjectExtractVM._initializeBuilder(this);
  }

  ProjectExtractVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _extractId = $v.extractId;
      _title = $v.title;
      _type = $v.type;
      _issuedAt = $v.issuedAt;
      _isIncoming = $v.isIncoming;
      _issuer = $v.issuer?.toBuilder();
      _files = $v.files?.toBuilder();
      _targets = $v.targets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectExtractVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectExtractVM;
  }

  @override
  void update(void Function(ProjectExtractVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectExtractVM build() {
    _$ProjectExtractVM _$result;
    try {
      _$result = _$v ??
          new _$ProjectExtractVM._(
              extractId: extractId,
              title: title,
              type: type,
              issuedAt: issuedAt,
              isIncoming: isIncoming,
              issuer: _issuer?.build(),
              files: _files?.build(),
              targets: _targets?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'issuer';
        _issuer?.build();
        _$failedField = 'files';
        _files?.build();
        _$failedField = 'targets';
        _targets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectExtractVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
