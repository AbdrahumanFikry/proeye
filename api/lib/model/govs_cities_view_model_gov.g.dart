// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'govs_cities_view_model_gov.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GovsCitiesViewModelGov> _$govsCitiesViewModelGovSerializer =
    new _$GovsCitiesViewModelGovSerializer();

class _$GovsCitiesViewModelGovSerializer
    implements StructuredSerializer<GovsCitiesViewModelGov> {
  @override
  final Iterable<Type> types = const [
    GovsCitiesViewModelGov,
    _$GovsCitiesViewModelGov
  ];
  @override
  final String wireName = 'GovsCitiesViewModelGov';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GovsCitiesViewModelGov object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.govId;
    if (value != null) {
      result
        ..add('govId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.govNameAr;
    if (value != null) {
      result
        ..add('govNameAr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.govNameEn;
    if (value != null) {
      result
        ..add('govNameEn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GovsCitiesViewModelGov deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GovsCitiesViewModelGovBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'govId':
          result.govId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'govNameAr':
          result.govNameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'govNameEn':
          result.govNameEn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GovsCitiesViewModelGov extends GovsCitiesViewModelGov {
  @override
  final int govId;
  @override
  final String govNameAr;
  @override
  final String govNameEn;

  factory _$GovsCitiesViewModelGov(
          [void Function(GovsCitiesViewModelGovBuilder) updates]) =>
      (new GovsCitiesViewModelGovBuilder()..update(updates)).build();

  _$GovsCitiesViewModelGov._({this.govId, this.govNameAr, this.govNameEn})
      : super._();

  @override
  GovsCitiesViewModelGov rebuild(
          void Function(GovsCitiesViewModelGovBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GovsCitiesViewModelGovBuilder toBuilder() =>
      new GovsCitiesViewModelGovBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GovsCitiesViewModelGov &&
        govId == other.govId &&
        govNameAr == other.govNameAr &&
        govNameEn == other.govNameEn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, govId.hashCode), govNameAr.hashCode), govNameEn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GovsCitiesViewModelGov')
          ..add('govId', govId)
          ..add('govNameAr', govNameAr)
          ..add('govNameEn', govNameEn))
        .toString();
  }
}

class GovsCitiesViewModelGovBuilder
    implements Builder<GovsCitiesViewModelGov, GovsCitiesViewModelGovBuilder> {
  _$GovsCitiesViewModelGov _$v;

  int _govId;
  int get govId => _$this._govId;
  set govId(int govId) => _$this._govId = govId;

  String _govNameAr;
  String get govNameAr => _$this._govNameAr;
  set govNameAr(String govNameAr) => _$this._govNameAr = govNameAr;

  String _govNameEn;
  String get govNameEn => _$this._govNameEn;
  set govNameEn(String govNameEn) => _$this._govNameEn = govNameEn;

  GovsCitiesViewModelGovBuilder() {
    GovsCitiesViewModelGov._initializeBuilder(this);
  }

  GovsCitiesViewModelGovBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _govId = $v.govId;
      _govNameAr = $v.govNameAr;
      _govNameEn = $v.govNameEn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GovsCitiesViewModelGov other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GovsCitiesViewModelGov;
  }

  @override
  void update(void Function(GovsCitiesViewModelGovBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GovsCitiesViewModelGov build() {
    final _$result = _$v ??
        new _$GovsCitiesViewModelGov._(
            govId: govId, govNameAr: govNameAr, govNameEn: govNameEn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
