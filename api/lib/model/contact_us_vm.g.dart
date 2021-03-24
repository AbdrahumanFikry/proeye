// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'contact_us_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContactUsVM> _$contactUsVMSerializer = new _$ContactUsVMSerializer();

class _$ContactUsVMSerializer implements StructuredSerializer<ContactUsVM> {
  @override
  final Iterable<Type> types = const [ContactUsVM, _$ContactUsVM];
  @override
  final String wireName = 'ContactUsVM';

  @override
  Iterable<Object> serialize(Serializers serializers, ContactUsVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.landlineNumber;
    if (value != null) {
      result
        ..add('landlineNumber')
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
    return result;
  }

  @override
  ContactUsVM deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactUsVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'landlineNumber':
          result.landlineNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContactUsVM extends ContactUsVM {
  @override
  final String address;
  @override
  final String landlineNumber;
  @override
  final String email;

  factory _$ContactUsVM([void Function(ContactUsVMBuilder) updates]) =>
      (new ContactUsVMBuilder()..update(updates)).build();

  _$ContactUsVM._({this.address, this.landlineNumber, this.email}) : super._();

  @override
  ContactUsVM rebuild(void Function(ContactUsVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactUsVMBuilder toBuilder() => new ContactUsVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactUsVM &&
        address == other.address &&
        landlineNumber == other.landlineNumber &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, address.hashCode), landlineNumber.hashCode),
        email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactUsVM')
          ..add('address', address)
          ..add('landlineNumber', landlineNumber)
          ..add('email', email))
        .toString();
  }
}

class ContactUsVMBuilder implements Builder<ContactUsVM, ContactUsVMBuilder> {
  _$ContactUsVM _$v;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _landlineNumber;
  String get landlineNumber => _$this._landlineNumber;
  set landlineNumber(String landlineNumber) =>
      _$this._landlineNumber = landlineNumber;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  ContactUsVMBuilder() {
    ContactUsVM._initializeBuilder(this);
  }

  ContactUsVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _landlineNumber = $v.landlineNumber;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactUsVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContactUsVM;
  }

  @override
  void update(void Function(ContactUsVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactUsVM build() {
    final _$result = _$v ??
        new _$ContactUsVM._(
            address: address, landlineNumber: landlineNumber, email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
