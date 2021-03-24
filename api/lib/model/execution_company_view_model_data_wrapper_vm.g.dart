// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'execution_company_view_model_data_wrapper_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExecutionCompanyViewModelDataWrapperVM>
    _$executionCompanyViewModelDataWrapperVMSerializer =
    new _$ExecutionCompanyViewModelDataWrapperVMSerializer();

class _$ExecutionCompanyViewModelDataWrapperVMSerializer
    implements StructuredSerializer<ExecutionCompanyViewModelDataWrapperVM> {
  @override
  final Iterable<Type> types = const [
    ExecutionCompanyViewModelDataWrapperVM,
    _$ExecutionCompanyViewModelDataWrapperVM
  ];
  @override
  final String wireName = 'ExecutionCompanyViewModelDataWrapperVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExecutionCompanyViewModelDataWrapperVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ExecutionCompanyViewModel)));
    }
    return result;
  }

  @override
  ExecutionCompanyViewModelDataWrapperVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExecutionCompanyViewModelDataWrapperVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ExecutionCompanyViewModel))
              as ExecutionCompanyViewModel);
          break;
      }
    }

    return result.build();
  }
}

class _$ExecutionCompanyViewModelDataWrapperVM
    extends ExecutionCompanyViewModelDataWrapperVM {
  @override
  final ExecutionCompanyViewModel data;

  factory _$ExecutionCompanyViewModelDataWrapperVM(
          [void Function(ExecutionCompanyViewModelDataWrapperVMBuilder)
              updates]) =>
      (new ExecutionCompanyViewModelDataWrapperVMBuilder()..update(updates))
          .build();

  _$ExecutionCompanyViewModelDataWrapperVM._({this.data}) : super._();

  @override
  ExecutionCompanyViewModelDataWrapperVM rebuild(
          void Function(ExecutionCompanyViewModelDataWrapperVMBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecutionCompanyViewModelDataWrapperVMBuilder toBuilder() =>
      new ExecutionCompanyViewModelDataWrapperVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecutionCompanyViewModelDataWrapperVM &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ExecutionCompanyViewModelDataWrapperVM')
          ..add('data', data))
        .toString();
  }
}

class ExecutionCompanyViewModelDataWrapperVMBuilder
    implements
        Builder<ExecutionCompanyViewModelDataWrapperVM,
            ExecutionCompanyViewModelDataWrapperVMBuilder> {
  _$ExecutionCompanyViewModelDataWrapperVM _$v;

  ExecutionCompanyViewModelBuilder _data;
  ExecutionCompanyViewModelBuilder get data =>
      _$this._data ??= new ExecutionCompanyViewModelBuilder();
  set data(ExecutionCompanyViewModelBuilder data) => _$this._data = data;

  ExecutionCompanyViewModelDataWrapperVMBuilder() {
    ExecutionCompanyViewModelDataWrapperVM._initializeBuilder(this);
  }

  ExecutionCompanyViewModelDataWrapperVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExecutionCompanyViewModelDataWrapperVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecutionCompanyViewModelDataWrapperVM;
  }

  @override
  void update(
      void Function(ExecutionCompanyViewModelDataWrapperVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExecutionCompanyViewModelDataWrapperVM build() {
    _$ExecutionCompanyViewModelDataWrapperVM _$result;
    try {
      _$result = _$v ??
          new _$ExecutionCompanyViewModelDataWrapperVM._(data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExecutionCompanyViewModelDataWrapperVM',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
