// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'req_update_task_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqUpdateTaskVM> _$reqUpdateTaskVMSerializer =
    new _$ReqUpdateTaskVMSerializer();

class _$ReqUpdateTaskVMSerializer
    implements StructuredSerializer<ReqUpdateTaskVM> {
  @override
  final Iterable<Type> types = const [ReqUpdateTaskVM, _$ReqUpdateTaskVM];
  @override
  final String wireName = 'ReqUpdateTaskVM';

  @override
  Iterable<Object> serialize(Serializers serializers, ReqUpdateTaskVM object,
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
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.removedFiles;
    if (value != null) {
      result
        ..add('removedFiles')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ReqUpdateTaskVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReqUpdateTaskVMBuilder();

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
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'removedFiles':
          result.removedFiles.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReqUpdateTaskVM extends ReqUpdateTaskVM {
  @override
  final int plannedDurationDays;
  @override
  final int plannedStartOffset;
  @override
  final String title;
  @override
  final BuiltList<String> addedFiles;
  @override
  final String notes;
  @override
  final BuiltList<String> removedFiles;

  factory _$ReqUpdateTaskVM([void Function(ReqUpdateTaskVMBuilder) updates]) =>
      (new ReqUpdateTaskVMBuilder()..update(updates)).build();

  _$ReqUpdateTaskVM._(
      {this.plannedDurationDays,
      this.plannedStartOffset,
      this.title,
      this.addedFiles,
      this.notes,
      this.removedFiles})
      : super._();

  @override
  ReqUpdateTaskVM rebuild(void Function(ReqUpdateTaskVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqUpdateTaskVMBuilder toBuilder() =>
      new ReqUpdateTaskVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqUpdateTaskVM &&
        plannedDurationDays == other.plannedDurationDays &&
        plannedStartOffset == other.plannedStartOffset &&
        title == other.title &&
        addedFiles == other.addedFiles &&
        notes == other.notes &&
        removedFiles == other.removedFiles;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, plannedDurationDays.hashCode),
                        plannedStartOffset.hashCode),
                    title.hashCode),
                addedFiles.hashCode),
            notes.hashCode),
        removedFiles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReqUpdateTaskVM')
          ..add('plannedDurationDays', plannedDurationDays)
          ..add('plannedStartOffset', plannedStartOffset)
          ..add('title', title)
          ..add('addedFiles', addedFiles)
          ..add('notes', notes)
          ..add('removedFiles', removedFiles))
        .toString();
  }
}

class ReqUpdateTaskVMBuilder
    implements Builder<ReqUpdateTaskVM, ReqUpdateTaskVMBuilder> {
  _$ReqUpdateTaskVM _$v;

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

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  ListBuilder<String> _removedFiles;
  ListBuilder<String> get removedFiles =>
      _$this._removedFiles ??= new ListBuilder<String>();
  set removedFiles(ListBuilder<String> removedFiles) =>
      _$this._removedFiles = removedFiles;

  ReqUpdateTaskVMBuilder() {
    ReqUpdateTaskVM._initializeBuilder(this);
  }

  ReqUpdateTaskVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plannedDurationDays = $v.plannedDurationDays;
      _plannedStartOffset = $v.plannedStartOffset;
      _title = $v.title;
      _addedFiles = $v.addedFiles?.toBuilder();
      _notes = $v.notes;
      _removedFiles = $v.removedFiles?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqUpdateTaskVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqUpdateTaskVM;
  }

  @override
  void update(void Function(ReqUpdateTaskVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReqUpdateTaskVM build() {
    _$ReqUpdateTaskVM _$result;
    try {
      _$result = _$v ??
          new _$ReqUpdateTaskVM._(
              plannedDurationDays: plannedDurationDays,
              plannedStartOffset: plannedStartOffset,
              title: title,
              addedFiles: _addedFiles?.build(),
              notes: notes,
              removedFiles: _removedFiles?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'addedFiles';
        _addedFiles?.build();

        _$failedField = 'removedFiles';
        _removedFiles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReqUpdateTaskVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
