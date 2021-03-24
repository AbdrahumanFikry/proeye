// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'company_activity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompanyActivity> _$companyActivitySerializer =
    new _$CompanyActivitySerializer();

class _$CompanyActivitySerializer
    implements StructuredSerializer<CompanyActivity> {
  @override
  final Iterable<Type> types = const [CompanyActivity, _$CompanyActivity];
  @override
  final String wireName = 'CompanyActivity';

  @override
  Iterable<Object> serialize(Serializers serializers, CompanyActivity object,
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
  CompanyActivity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompanyActivityBuilder();

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

class _$CompanyActivity extends CompanyActivity {
  @override
  final int id;
  @override
  final String name;
  @override
  final bool isActive;

  factory _$CompanyActivity([void Function(CompanyActivityBuilder) updates]) =>
      (new CompanyActivityBuilder()..update(updates)).build();

  _$CompanyActivity._({this.id, this.name, this.isActive}) : super._();

  @override
  CompanyActivity rebuild(void Function(CompanyActivityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyActivityBuilder toBuilder() =>
      new CompanyActivityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompanyActivity &&
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
    return (newBuiltValueToStringHelper('CompanyActivity')
          ..add('id', id)
          ..add('name', name)
          ..add('isActive', isActive))
        .toString();
  }
}

class CompanyActivityBuilder
    implements Builder<CompanyActivity, CompanyActivityBuilder> {
  _$CompanyActivity _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  CompanyActivityBuilder() {
    CompanyActivity._initializeBuilder(this);
  }

  CompanyActivityBuilder get _$this {
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
  void replace(CompanyActivity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompanyActivity;
  }

  @override
  void update(void Function(CompanyActivityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompanyActivity build() {
    final _$result =
        _$v ?? new _$CompanyActivity._(id: id, name: name, isActive: isActive);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
