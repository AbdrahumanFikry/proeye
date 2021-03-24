// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'claim_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClaimViewModel> _$claimViewModelSerializer =
    new _$ClaimViewModelSerializer();

class _$ClaimViewModelSerializer
    implements StructuredSerializer<ClaimViewModel> {
  @override
  final Iterable<Type> types = const [ClaimViewModel, _$ClaimViewModel];
  @override
  final String wireName = 'ClaimViewModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ClaimViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.issuer;
    if (value != null) {
      result
        ..add('issuer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.originalIssuer;
    if (value != null) {
      result
        ..add('originalIssuer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.valueType;
    if (value != null) {
      result
        ..add('valueType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ClaimViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClaimViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issuer':
          result.issuer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'originalIssuer':
          result.originalIssuer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'valueType':
          result.valueType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ClaimViewModel extends ClaimViewModel {
  @override
  final String type;
  @override
  final String issuer;
  @override
  final String originalIssuer;
  @override
  final String valueType;
  @override
  final String value;

  factory _$ClaimViewModel([void Function(ClaimViewModelBuilder) updates]) =>
      (new ClaimViewModelBuilder()..update(updates)).build();

  _$ClaimViewModel._(
      {this.type, this.issuer, this.originalIssuer, this.valueType, this.value})
      : super._();

  @override
  ClaimViewModel rebuild(void Function(ClaimViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimViewModelBuilder toBuilder() =>
      new ClaimViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimViewModel &&
        type == other.type &&
        issuer == other.issuer &&
        originalIssuer == other.originalIssuer &&
        valueType == other.valueType &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, type.hashCode), issuer.hashCode),
                originalIssuer.hashCode),
            valueType.hashCode),
        value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClaimViewModel')
          ..add('type', type)
          ..add('issuer', issuer)
          ..add('originalIssuer', originalIssuer)
          ..add('valueType', valueType)
          ..add('value', value))
        .toString();
  }
}

class ClaimViewModelBuilder
    implements Builder<ClaimViewModel, ClaimViewModelBuilder> {
  _$ClaimViewModel _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _issuer;
  String get issuer => _$this._issuer;
  set issuer(String issuer) => _$this._issuer = issuer;

  String _originalIssuer;
  String get originalIssuer => _$this._originalIssuer;
  set originalIssuer(String originalIssuer) =>
      _$this._originalIssuer = originalIssuer;

  String _valueType;
  String get valueType => _$this._valueType;
  set valueType(String valueType) => _$this._valueType = valueType;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ClaimViewModelBuilder() {
    ClaimViewModel._initializeBuilder(this);
  }

  ClaimViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _issuer = $v.issuer;
      _originalIssuer = $v.originalIssuer;
      _valueType = $v.valueType;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClaimViewModel;
  }

  @override
  void update(void Function(ClaimViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ClaimViewModel build() {
    final _$result = _$v ??
        new _$ClaimViewModel._(
            type: type,
            issuer: issuer,
            originalIssuer: originalIssuer,
            valueType: valueType,
            value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
