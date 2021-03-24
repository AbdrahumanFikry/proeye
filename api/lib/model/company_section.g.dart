// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'company_section.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanySection> _$companySectionSerializer =
    new _$CompanySectionSerializer();

class _$CompanySectionSerializer
    implements StructuredSerializer<CompanySection> {
  @override
  final Iterable<Type> types = const [CompanySection, _$CompanySection];
  @override
  final String wireName = 'CompanySection';

  @override
  Iterable<Object> serialize(Serializers serializers, CompanySection object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  CompanySection deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanySectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$CompanySection extends CompanySection {
  @override
  final int id;
  @override
  final String name;
  @override
  final bool isActive;

  factory _$CompanySection([void Function(CompanySectionBuilder) updates]) =>
      (new CompanySectionBuilder()..update(updates)).build();

  _$CompanySection._({this.id, this.name, this.isActive}) : super._();

  @override
  CompanySection rebuild(void Function(CompanySectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanySectionBuilder toBuilder() =>
      new CompanySectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanySection &&
        id == other.id &&
        name == other.name &&
        isActive == other.isActive;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), isActive.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompanySection')
          ..add('id', id)
          ..add('name', name)
          ..add('isActive', isActive))
        .toString();
  }
}

class CompanySectionBuilder
    implements Builder<CompanySection, CompanySectionBuilder> {
  _$CompanySection _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  CompanySectionBuilder() {
    CompanySection._initializeBuilder(this);
  }

  CompanySectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _isActive = $v.isActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompanySection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanySection;
  }

  @override
  void update(void Function(CompanySectionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompanySection build() {
    final _$result =
        _$v ?? new _$CompanySection._(id: id, name: name, isActive: isActive);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
