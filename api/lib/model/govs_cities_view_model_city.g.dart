// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'govs_cities_view_model_city.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GovsCitiesViewModelCity> _$govsCitiesViewModelCitySerializer =
    new _$GovsCitiesViewModelCitySerializer();

class _$GovsCitiesViewModelCitySerializer
    implements StructuredSerializer<GovsCitiesViewModelCity> {
  @override
  final Iterable<Type> types = const [
    GovsCitiesViewModelCity,
    _$GovsCitiesViewModelCity
  ];
  @override
  final String wireName = 'GovsCitiesViewModelCity';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GovsCitiesViewModelCity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.govId;
    if (value != null) {
      result
        ..add('govId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cityId;
    if (value != null) {
      result
        ..add('cityId')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.cityNameAr;
    if (value != null) {
      result
        ..add('cityNameAr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cityNameEn;
    if (value != null) {
      result
        ..add('cityNameEn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GovsCitiesViewModelCity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GovsCitiesViewModelCityBuilder();

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
        case 'cityId':
          result.cityId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cityNameAr':
          result.cityNameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cityNameEn':
          result.cityNameEn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GovsCitiesViewModelCity extends GovsCitiesViewModelCity {
  @override
  final int govId;
  @override
  final int cityId;
  @override
  final String cityNameAr;
  @override
  final String cityNameEn;

  factory _$GovsCitiesViewModelCity(
          [void Function(GovsCitiesViewModelCityBuilder) updates]) =>
      (new GovsCitiesViewModelCityBuilder()..update(updates)).build();

  _$GovsCitiesViewModelCity._(
      {this.govId, this.cityId, this.cityNameAr, this.cityNameEn})
      : super._();

  @override
  GovsCitiesViewModelCity rebuild(
          void Function(GovsCitiesViewModelCityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GovsCitiesViewModelCityBuilder toBuilder() =>
      new GovsCitiesViewModelCityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GovsCitiesViewModelCity &&
        govId == other.govId &&
        cityId == other.cityId &&
        cityNameAr == other.cityNameAr &&
        cityNameEn == other.cityNameEn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, govId.hashCode), cityId.hashCode), cityNameAr.hashCode),
        cityNameEn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GovsCitiesViewModelCity')
          ..add('govId', govId)
          ..add('cityId', cityId)
          ..add('cityNameAr', cityNameAr)
          ..add('cityNameEn', cityNameEn))
        .toString();
  }
}

class GovsCitiesViewModelCityBuilder
    implements
        Builder<GovsCitiesViewModelCity, GovsCitiesViewModelCityBuilder> {
  _$GovsCitiesViewModelCity _$v;

  int _govId;
  int get govId => _$this._govId;
  set govId(int govId) => _$this._govId = govId;

  int _cityId;
  int get cityId => _$this._cityId;
  set cityId(int cityId) => _$this._cityId = cityId;

  String _cityNameAr;
  String get cityNameAr => _$this._cityNameAr;
  set cityNameAr(String cityNameAr) => _$this._cityNameAr = cityNameAr;

  String _cityNameEn;
  String get cityNameEn => _$this._cityNameEn;
  set cityNameEn(String cityNameEn) => _$this._cityNameEn = cityNameEn;

  GovsCitiesViewModelCityBuilder() {
    GovsCitiesViewModelCity._initializeBuilder(this);
  }

  GovsCitiesViewModelCityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _govId = $v.govId;
      _cityId = $v.cityId;
      _cityNameAr = $v.cityNameAr;
      _cityNameEn = $v.cityNameEn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GovsCitiesViewModelCity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GovsCitiesViewModelCity;
  }

  @override
  void update(void Function(GovsCitiesViewModelCityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GovsCitiesViewModelCity build() {
    final _$result = _$v ??
        new _$GovsCitiesViewModelCity._(
            govId: govId,
            cityId: cityId,
            cityNameAr: cityNameAr,
            cityNameEn: cityNameEn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
