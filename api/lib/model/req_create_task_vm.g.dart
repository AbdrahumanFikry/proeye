// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'req_create_task_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqCreateTaskVM> _$reqCreateTaskVMSerializer =
    new _$ReqCreateTaskVMSerializer();

class _$ReqCreateTaskVMSerializer
    implements StructuredSerializer<ReqCreateTaskVM> {
  @override
  final Iterable<Type> types = const [ReqCreateTaskVM, _$ReqCreateTaskVM];
  @override
  final String wireName = 'ReqCreateTaskVM';

  @override
  Iterable<Object> serialize(Serializers serializers, ReqCreateTaskVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.plannedDurationDays;
    if (value != null) {
      result
        ..add('plannedDurationDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.plannedStartOffset;
    if (value != null) {
      result
        ..add('plannedStartOffset')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addedFiles;
    if (value != null) {
      result
        ..add('addedFiles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ReqCreateTaskVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReqCreateTaskVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'plannedDurationDays':
          result.plannedDurationDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'plannedStartOffset':
          result.plannedStartOffset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addedFiles':
          result.addedFiles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReqCreateTaskVM extends ReqCreateTaskVM {
  @override
  final int plannedDurationDays;
  @override
  final int plannedStartOffset;
  @override
  final String title;
  @override
  final BuiltList<String> addedFiles;

  factory _$ReqCreateTaskVM([void Function(ReqCreateTaskVMBuilder) updates]) =>
      (new ReqCreateTaskVMBuilder()..update(updates)).build();

  _$ReqCreateTaskVM._(
      {this.plannedDurationDays,
      this.plannedStartOffset,
      this.title,
      this.addedFiles})
      : super._();

  @override
  ReqCreateTaskVM rebuild(void Function(ReqCreateTaskVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqCreateTaskVMBuilder toBuilder() =>
      new ReqCreateTaskVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqCreateTaskVM &&
        plannedDurationDays == other.plannedDurationDays &&
        plannedStartOffset == other.plannedStartOffset &&
        title == other.title &&
        addedFiles == other.addedFiles;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc(0, plannedDurationDays.hashCode),
                plannedStartOffset.hashCode),
            title.hashCode),
        addedFiles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReqCreateTaskVM')
          ..add('plannedDurationDays', plannedDurationDays)
          ..add('plannedStartOffset', plannedStartOffset)
          ..add('title', title)
          ..add('addedFiles', addedFiles))
        .toString();
  }
}

class ReqCreateTaskVMBuilder
    implements Builder<ReqCreateTaskVM, ReqCreateTaskVMBuilder> {
  _$ReqCreateTaskVM _$v;

  int _plannedDurationDays;
  int get plannedDurationDays => _$this._plannedDurationDays;
  set plannedDurationDays(int plannedDurationDays) =>
      _$this._plannedDurationDays = plannedDurationDays;

  int _plannedStartOffset;
  int get plannedStartOffset => _$this._plannedStartOffset;
  set plannedStartOffset(int plannedStartOffset) =>
      _$this._plannedStartOffset = plannedStartOffset;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ListBuilder<String> _addedFiles;
  ListBuilder<String> get addedFiles =>
      _$this._addedFiles ??= new ListBuilder<String>();
  set addedFiles(ListBuilder<String> addedFiles) =>
      _$this._addedFiles = addedFiles;

  ReqCreateTaskVMBuilder() {
    ReqCreateTaskVM._initializeBuilder(this);
  }

  ReqCreateTaskVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plannedDurationDays = $v.plannedDurationDays;
      _plannedStartOffset = $v.plannedStartOffset;
      _title = $v.title;
      _addedFiles = $v.addedFiles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqCreateTaskVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqCreateTaskVM;
  }

  @override
  void update(void Function(ReqCreateTaskVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReqCreateTaskVM build() {
    _$ReqCreateTaskVM _$result;
    try {
      _$result = _$v ??
          new _$ReqCreateTaskVM._(
              plannedDurationDays: plannedDurationDays,
              plannedStartOffset: plannedStartOffset,
              title: title,
              addedFiles: _addedFiles?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'addedFiles';
        _addedFiles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReqCreateTaskVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
