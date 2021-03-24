// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'execution_company_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExecutionCompanyViewModel> _$executionCompanyViewModelSerializer =
    new _$ExecutionCompanyViewModelSerializer();

class _$ExecutionCompanyViewModelSerializer
    implements StructuredSerializer<ExecutionCompanyViewModel> {
  @override
  final Iterable<Type> types = const [
    ExecutionCompanyViewModel,
    _$ExecutionCompanyViewModel
  ];
  @override
  final String wireName = 'ExecutionCompanyViewModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ExecutionCompanyViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.companyId;
    if (value != null) {
      result
        ..add('companyId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone1;
    if (value != null) {
      result
        ..add('phone1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone2;
    if (value != null) {
      result
        ..add('phone2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fax;
    if (value != null) {
      result
        ..add('fax')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isVerified;
    if (value != null) {
      result
        ..add('isVerified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.companyRegister;
    if (value != null) {
      result
        ..add('companyRegister')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.engLayer;
    if (value != null) {
      result
        ..add('engLayer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ExecutionCompanyViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExecutionCompanyViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'companyId':
          result.companyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone1':
          result.phone1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone2':
          result.phone2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fax':
          result.fax = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isVerified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'companyRegister':
          result.companyRegister = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'engLayer':
          result.engLayer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ExecutionCompanyViewModel extends ExecutionCompanyViewModel {
  @override
  final String companyId;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phone1;
  @override
  final String phone2;
  @override
  final String fax;
  @override
  final String notes;
  @override
  final String email;
  @override
  final bool isVerified;
  @override
  final String companyRegister;
  @override
  final String engLayer;

  factory _$ExecutionCompanyViewModel(
          [void Function(ExecutionCompanyViewModelBuilder) updates]) =>
      (new ExecutionCompanyViewModelBuilder()..update(updates)).build();

  _$ExecutionCompanyViewModel._(
      {this.companyId,
      this.name,
      this.address,
      this.phone1,
      this.phone2,
      this.fax,
      this.notes,
      this.email,
      this.isVerified,
      this.companyRegister,
      this.engLayer})
      : super._();

  @override
  ExecutionCompanyViewModel rebuild(
          void Function(ExecutionCompanyViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExecutionCompanyViewModelBuilder toBuilder() =>
      new ExecutionCompanyViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExecutionCompanyViewModel &&
        companyId == other.companyId &&
        name == other.name &&
        address == other.address &&
        phone1 == other.phone1 &&
        phone2 == other.phone2 &&
        fax == other.fax &&
        notes == other.notes &&
        email == other.email &&
        isVerified == other.isVerified &&
        companyRegister == other.companyRegister &&
        engLayer == other.engLayer;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, companyId.hashCode),
                                            name.hashCode),
                                        address.hashCode),
                                    phone1.hashCode),
                                phone2.hashCode),
                            fax.hashCode),
                        notes.hashCode),
                    email.hashCode),
                isVerified.hashCode),
            companyRegister.hashCode),
        engLayer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExecutionCompanyViewModel')
          ..add('companyId', companyId)
          ..add('name', name)
          ..add('address', address)
          ..add('phone1', phone1)
          ..add('phone2', phone2)
          ..add('fax', fax)
          ..add('notes', notes)
          ..add('email', email)
          ..add('isVerified', isVerified)
          ..add('companyRegister', companyRegister)
          ..add('engLayer', engLayer))
        .toString();
  }
}

class ExecutionCompanyViewModelBuilder
    implements
        Builder<ExecutionCompanyViewModel, ExecutionCompanyViewModelBuilder> {
  _$ExecutionCompanyViewModel _$v;

  String _companyId;
  String get companyId => _$this._companyId;
  set companyId(String companyId) => _$this._companyId = companyId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _phone1;
  String get phone1 => _$this._phone1;
  set phone1(String phone1) => _$this._phone1 = phone1;

  String _phone2;
  String get phone2 => _$this._phone2;
  set phone2(String phone2) => _$this._phone2 = phone2;

  String _fax;
  String get fax => _$this._fax;
  set fax(String fax) => _$this._fax = fax;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  bool _isVerified;
  bool get isVerified => _$this._isVerified;
  set isVerified(bool isVerified) => _$this._isVerified = isVerified;

  String _companyRegister;
  String get companyRegister => _$this._companyRegister;
  set companyRegister(String companyRegister) =>
      _$this._companyRegister = companyRegister;

  String _engLayer;
  String get engLayer => _$this._engLayer;
  set engLayer(String engLayer) => _$this._engLayer = engLayer;

  ExecutionCompanyViewModelBuilder() {
    ExecutionCompanyViewModel._initializeBuilder(this);
  }

  ExecutionCompanyViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _companyId = $v.companyId;
      _name = $v.name;
      _address = $v.address;
      _phone1 = $v.phone1;
      _phone2 = $v.phone2;
      _fax = $v.fax;
      _notes = $v.notes;
      _email = $v.email;
      _isVerified = $v.isVerified;
      _companyRegister = $v.companyRegister;
      _engLayer = $v.engLayer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExecutionCompanyViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExecutionCompanyViewModel;
  }

  @override
  void update(void Function(ExecutionCompanyViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExecutionCompanyViewModel build() {
    final _$result = _$v ??
        new _$ExecutionCompanyViewModel._(
            companyId: companyId,
            name: name,
            address: address,
            phone1: phone1,
            phone2: phone2,
            fax: fax,
            notes: notes,
            email: email,
            isVerified: isVerified,
            companyRegister: companyRegister,
            engLayer: engLayer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
