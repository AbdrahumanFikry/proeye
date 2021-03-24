// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'abstract_general_section_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AbstractGeneralSectionVM> _$abstractGeneralSectionVMSerializer =
    new _$AbstractGeneralSectionVMSerializer();

class _$AbstractGeneralSectionVMSerializer
    implements StructuredSerializer<AbstractGeneralSectionVM> {
  @override
  final Iterable<Type> types = const [
    AbstractGeneralSectionVM,
    _$AbstractGeneralSectionVM
  ];
  @override
  final String wireName = 'AbstractGeneralSectionVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AbstractGeneralSectionVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.sectionId;
    if (value != null) {
      result
        ..add('sectionId')
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
    return result;
  }

  @override
  AbstractGeneralSectionVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AbstractGeneralSectionVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'sectionId':
          result.sectionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AbstractGeneralSectionVM extends AbstractGeneralSectionVM {
  @override
  final String sectionId;
  @override
  final String title;

  factory _$AbstractGeneralSectionVM(
          [void Function(AbstractGeneralSectionVMBuilder) updates]) =>
      (new AbstractGeneralSectionVMBuilder()..update(updates)).build();

  _$AbstractGeneralSectionVM._({this.sectionId, this.title}) : super._();

  @override
  AbstractGeneralSectionVM rebuild(
          void Function(AbstractGeneralSectionVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AbstractGeneralSectionVMBuilder toBuilder() =>
      new AbstractGeneralSectionVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AbstractGeneralSectionVM &&
        sectionId == other.sectionId &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sectionId.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AbstractGeneralSectionVM')
          ..add('sectionId', sectionId)
          ..add('title', title))
        .toString();
  }
}

class AbstractGeneralSectionVMBuilder
    implements
        Builder<AbstractGeneralSectionVM, AbstractGeneralSectionVMBuilder> {
  _$AbstractGeneralSectionVM _$v;

  String _sectionId;
  String get sectionId => _$this._sectionId;
  set sectionId(String sectionId) => _$this._sectionId = sectionId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  AbstractGeneralSectionVMBuilder() {
    AbstractGeneralSectionVM._initializeBuilder(this);
  }

  AbstractGeneralSectionVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sectionId = $v.sectionId;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AbstractGeneralSectionVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AbstractGeneralSectionVM;
  }

  @override
  void update(void Function(AbstractGeneralSectionVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AbstractGeneralSectionVM build() {
    final _$result = _$v ??
        new _$AbstractGeneralSectionVM._(sectionId: sectionId, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
