// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gov_company_view_model_data_wrapper_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GovCompanyViewModelDataWrapperVM>
    _$govCompanyViewModelDataWrapperVMSerializer =
    new _$GovCompanyViewModelDataWrapperVMSerializer();

class _$GovCompanyViewModelDataWrapperVMSerializer
    implements StructuredSerializer<GovCompanyViewModelDataWrapperVM> {
  @override
  final Iterable<Type> types = const [
    GovCompanyViewModelDataWrapperVM,
    _$GovCompanyViewModelDataWrapperVM
  ];
  @override
  final String wireName = 'GovCompanyViewModelDataWrapperVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GovCompanyViewModelDataWrapperVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GovCompanyViewModel)));
    }
    return result;
  }

  @override
  GovCompanyViewModelDataWrapperVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GovCompanyViewModelDataWrapperVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GovCompanyViewModel))
              as GovCompanyViewModel);
          break;
      }
    }

    return result.build();
  }
}

class _$GovCompanyViewModelDataWrapperVM
    extends GovCompanyViewModelDataWrapperVM {
  @override
  final GovCompanyViewModel data;

  factory _$GovCompanyViewModelDataWrapperVM(
          [void Function(GovCompanyViewModelDataWrapperVMBuilder) updates]) =>
      (new GovCompanyViewModelDataWrapperVMBuilder()..update(updates)).build();

  _$GovCompanyViewModelDataWrapperVM._({this.data}) : super._();

  @override
  GovCompanyViewModelDataWrapperVM rebuild(
          void Function(GovCompanyViewModelDataWrapperVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GovCompanyViewModelDataWrapperVMBuilder toBuilder() =>
      new GovCompanyViewModelDataWrapperVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GovCompanyViewModelDataWrapperVM && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GovCompanyViewModelDataWrapperVM')
          ..add('data', data))
        .toString();
  }
}

class GovCompanyViewModelDataWrapperVMBuilder
    implements
        Builder<GovCompanyViewModelDataWrapperVM,
            GovCompanyViewModelDataWrapperVMBuilder> {
  _$GovCompanyViewModelDataWrapperVM _$v;

  GovCompanyViewModelBuilder _data;
  GovCompanyViewModelBuilder get data =>
      _$this._data ??= new GovCompanyViewModelBuilder();
  set data(GovCompanyViewModelBuilder data) => _$this._data = data;

  GovCompanyViewModelDataWrapperVMBuilder() {
    GovCompanyViewModelDataWrapperVM._initializeBuilder(this);
  }

  GovCompanyViewModelDataWrapperVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GovCompanyViewModelDataWrapperVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GovCompanyViewModelDataWrapperVM;
  }

  @override
  void update(void Function(GovCompanyViewModelDataWrapperVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GovCompanyViewModelDataWrapperVM build() {
    _$GovCompanyViewModelDataWrapperVM _$result;
    try {
      _$result =
          _$v ?? new _$GovCompanyViewModelDataWrapperVM._(data: _data?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GovCompanyViewModelDataWrapperVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
