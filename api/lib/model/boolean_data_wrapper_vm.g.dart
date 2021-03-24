// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'boolean_data_wrapper_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BooleanDataWrapperVM> _$booleanDataWrapperVMSerializer =
    new _$BooleanDataWrapperVMSerializer();

class _$BooleanDataWrapperVMSerializer
    implements StructuredSerializer<BooleanDataWrapperVM> {
  @override
  final Iterable<Type> types = const [
    BooleanDataWrapperVM,
    _$BooleanDataWrapperVM
  ];
  @override
  final String wireName = 'BooleanDataWrapperVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BooleanDataWrapperVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  BooleanDataWrapperVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BooleanDataWrapperVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$BooleanDataWrapperVM extends BooleanDataWrapperVM {
  @override
  final bool data;

  factory _$BooleanDataWrapperVM(
          [void Function(BooleanDataWrapperVMBuilder) updates]) =>
      (new BooleanDataWrapperVMBuilder()..update(updates)).build();

  _$BooleanDataWrapperVM._({this.data}) : super._();

  @override
  BooleanDataWrapperVM rebuild(
          void Function(BooleanDataWrapperVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BooleanDataWrapperVMBuilder toBuilder() =>
      new BooleanDataWrapperVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BooleanDataWrapperVM && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BooleanDataWrapperVM')
          ..add('data', data))
        .toString();
  }
}

class BooleanDataWrapperVMBuilder
    implements Builder<BooleanDataWrapperVM, BooleanDataWrapperVMBuilder> {
  _$BooleanDataWrapperVM _$v;

  bool _data;
  bool get data => _$this._data;
  set data(bool data) => _$this._data = data;

  BooleanDataWrapperVMBuilder() {
    BooleanDataWrapperVM._initializeBuilder(this);
  }

  BooleanDataWrapperVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BooleanDataWrapperVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BooleanDataWrapperVM;
  }

  @override
  void update(void Function(BooleanDataWrapperVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BooleanDataWrapperVM build() {
    final _$result = _$v ?? new _$BooleanDataWrapperVM._(data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
