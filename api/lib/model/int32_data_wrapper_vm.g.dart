// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'int32_data_wrapper_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Int32DataWrapperVM> _$int32DataWrapperVMSerializer =
    new _$Int32DataWrapperVMSerializer();

class _$Int32DataWrapperVMSerializer
    implements StructuredSerializer<Int32DataWrapperVM> {
  @override
  final Iterable<Type> types = const [Int32DataWrapperVM, _$Int32DataWrapperVM];
  @override
  final String wireName = 'Int32DataWrapperVM';

  @override
  Iterable<Object> serialize(Serializers serializers, Int32DataWrapperVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Int32DataWrapperVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Int32DataWrapperVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Int32DataWrapperVM extends Int32DataWrapperVM {
  @override
  final int data;

  factory _$Int32DataWrapperVM(
          [void Function(Int32DataWrapperVMBuilder) updates]) =>
      (new Int32DataWrapperVMBuilder()..update(updates)).build();

  _$Int32DataWrapperVM._({this.data}) : super._();

  @override
  Int32DataWrapperVM rebuild(
          void Function(Int32DataWrapperVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Int32DataWrapperVMBuilder toBuilder() =>
      new Int32DataWrapperVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Int32DataWrapperVM && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Int32DataWrapperVM')
          ..add('data', data))
        .toString();
  }
}

class Int32DataWrapperVMBuilder
    implements Builder<Int32DataWrapperVM, Int32DataWrapperVMBuilder> {
  _$Int32DataWrapperVM _$v;

  int _data;
  int get data => _$this._data;
  set data(int data) => _$this._data = data;

  Int32DataWrapperVMBuilder() {
    Int32DataWrapperVM._initializeBuilder(this);
  }

  Int32DataWrapperVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Int32DataWrapperVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Int32DataWrapperVM;
  }

  @override
  void update(void Function(Int32DataWrapperVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Int32DataWrapperVM build() {
    final _$result = _$v ?? new _$Int32DataWrapperVM._(data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
