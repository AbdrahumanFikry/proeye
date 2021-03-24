// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'colored_danger_zone_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ColoredDangerZoneVM> _$coloredDangerZoneVMSerializer =
    new _$ColoredDangerZoneVMSerializer();

class _$ColoredDangerZoneVMSerializer
    implements StructuredSerializer<ColoredDangerZoneVM> {
  @override
  final Iterable<Type> types = const [
    ColoredDangerZoneVM,
    _$ColoredDangerZoneVM
  ];
  @override
  final String wireName = 'ColoredDangerZoneVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ColoredDangerZoneVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.isDone;
    if (value != null) {
      result
        ..add('isDone')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dangerPercent;
    if (value != null) {
      result
        ..add('dangerPercent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.colorValue;
    if (value != null) {
      result
        ..add('colorValue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.colorHex;
    if (value != null) {
      result
        ..add('colorHex')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ColoredDangerZoneVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ColoredDangerZoneVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'isDone':
          result.isDone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'dangerPercent':
          result.dangerPercent = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'colorValue':
          result.colorValue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'colorHex':
          result.colorHex = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ColoredDangerZoneVM extends ColoredDangerZoneVM {
  @override
  final bool isDone;
  @override
  final double dangerPercent;
  @override
  final int colorValue;
  @override
  final String colorHex;

  factory _$ColoredDangerZoneVM(
          [void Function(ColoredDangerZoneVMBuilder) updates]) =>
      (new ColoredDangerZoneVMBuilder()..update(updates)).build();

  _$ColoredDangerZoneVM._(
      {this.isDone, this.dangerPercent, this.colorValue, this.colorHex})
      : super._();

  @override
  ColoredDangerZoneVM rebuild(
          void Function(ColoredDangerZoneVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ColoredDangerZoneVMBuilder toBuilder() =>
      new ColoredDangerZoneVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ColoredDangerZoneVM &&
        isDone == other.isDone &&
        dangerPercent == other.dangerPercent &&
        colorValue == other.colorValue &&
        colorHex == other.colorHex;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, isDone.hashCode), dangerPercent.hashCode),
            colorValue.hashCode),
        colorHex.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ColoredDangerZoneVM')
          ..add('isDone', isDone)
          ..add('dangerPercent', dangerPercent)
          ..add('colorValue', colorValue)
          ..add('colorHex', colorHex))
        .toString();
  }
}

class ColoredDangerZoneVMBuilder
    implements Builder<ColoredDangerZoneVM, ColoredDangerZoneVMBuilder> {
  _$ColoredDangerZoneVM _$v;

  bool _isDone;
  bool get isDone => _$this._isDone;
  set isDone(bool isDone) => _$this._isDone = isDone;

  double _dangerPercent;
  double get dangerPercent => _$this._dangerPercent;
  set dangerPercent(double dangerPercent) =>
      _$this._dangerPercent = dangerPercent;

  int _colorValue;
  int get colorValue => _$this._colorValue;
  set colorValue(int colorValue) => _$this._colorValue = colorValue;

  String _colorHex;
  String get colorHex => _$this._colorHex;
  set colorHex(String colorHex) => _$this._colorHex = colorHex;

  ColoredDangerZoneVMBuilder() {
    ColoredDangerZoneVM._initializeBuilder(this);
  }

  ColoredDangerZoneVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isDone = $v.isDone;
      _dangerPercent = $v.dangerPercent;
      _colorValue = $v.colorValue;
      _colorHex = $v.colorHex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ColoredDangerZoneVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ColoredDangerZoneVM;
  }

  @override
  void update(void Function(ColoredDangerZoneVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ColoredDangerZoneVM build() {
    final _$result = _$v ??
        new _$ColoredDangerZoneVM._(
            isDone: isDone,
            dangerPercent: dangerPercent,
            colorValue: colorValue,
            colorHex: colorHex);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
