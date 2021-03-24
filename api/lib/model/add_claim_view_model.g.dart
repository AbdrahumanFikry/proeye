// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'add_claim_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddClaimViewModel> _$addClaimViewModelSerializer =
    new _$AddClaimViewModelSerializer();

class _$AddClaimViewModelSerializer
    implements StructuredSerializer<AddClaimViewModel> {
  @override
  final Iterable<Type> types = const [AddClaimViewModel, _$AddClaimViewModel];
  @override
  final String wireName = 'AddClaimViewModel';

  @override
  Iterable<Object> serialize(Serializers serializers, AddClaimViewModel object,
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
  AddClaimViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddClaimViewModelBuilder();

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
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddClaimViewModel extends AddClaimViewModel {
  @override
  final String type;
  @override
  final String value;

  factory _$AddClaimViewModel(
          [void Function(AddClaimViewModelBuilder) updates]) =>
      (new AddClaimViewModelBuilder()..update(updates)).build();

  _$AddClaimViewModel._({this.type, this.value}) : super._();

  @override
  AddClaimViewModel rebuild(void Function(AddClaimViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddClaimViewModelBuilder toBuilder() =>
      new AddClaimViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddClaimViewModel &&
        type == other.type &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, type.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddClaimViewModel')
          ..add('type', type)
          ..add('value', value))
        .toString();
  }
}

class AddClaimViewModelBuilder
    implements Builder<AddClaimViewModel, AddClaimViewModelBuilder> {
  _$AddClaimViewModel _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  AddClaimViewModelBuilder() {
    AddClaimViewModel._initializeBuilder(this);
  }

  AddClaimViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddClaimViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddClaimViewModel;
  }

  @override
  void update(void Function(AddClaimViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddClaimViewModel build() {
    final _$result = _$v ?? new _$AddClaimViewModel._(type: type, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
