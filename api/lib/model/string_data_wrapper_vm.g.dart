// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'string_data_wrapper_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StringDataWrapperVM> _$stringDataWrapperVMSerializer =
    new _$StringDataWrapperVMSerializer();

class _$StringDataWrapperVMSerializer
    implements StructuredSerializer<StringDataWrapperVM> {
  @override
  final Iterable<Type> types = const [
    StringDataWrapperVM,
    _$StringDataWrapperVM
  ];
  @override
  final String wireName = 'StringDataWrapperVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, StringDataWrapperVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  StringDataWrapperVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StringDataWrapperVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StringDataWrapperVM extends StringDataWrapperVM {
  @override
  final String data;

  factory _$StringDataWrapperVM(
          [void Function(StringDataWrapperVMBuilder) updates]) =>
      (new StringDataWrapperVMBuilder()..update(updates)).build();

  _$StringDataWrapperVM._({this.data}) : super._();

  @override
  StringDataWrapperVM rebuild(
          void Function(StringDataWrapperVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StringDataWrapperVMBuilder toBuilder() =>
      new StringDataWrapperVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StringDataWrapperVM && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StringDataWrapperVM')
          ..add('data', data))
        .toString();
  }
}

class StringDataWrapperVMBuilder
    implements Builder<StringDataWrapperVM, StringDataWrapperVMBuilder> {
  _$StringDataWrapperVM _$v;

  String _data;
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  StringDataWrapperVMBuilder() {
    StringDataWrapperVM._initializeBuilder(this);
  }

  StringDataWrapperVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StringDataWrapperVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StringDataWrapperVM;
  }

  @override
  void update(void Function(StringDataWrapperVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StringDataWrapperVM build() {
    final _$result = _$v ?? new _$StringDataWrapperVM._(data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
