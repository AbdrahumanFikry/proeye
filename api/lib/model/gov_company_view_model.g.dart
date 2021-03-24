// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gov_company_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GovCompanyViewModel> _$govCompanyViewModelSerializer =
    new _$GovCompanyViewModelSerializer();

class _$GovCompanyViewModelSerializer
    implements StructuredSerializer<GovCompanyViewModel> {
  @override
  final Iterable<Type> types = const [
    GovCompanyViewModel,
    _$GovCompanyViewModel
  ];
  @override
  final String wireName = 'GovCompanyViewModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GovCompanyViewModel object,
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
    value = object.isInMansouraUniversity;
    if (value != null) {
      result
        ..add('isInMansouraUniversity')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.activity;
    if (value != null) {
      result
        ..add('activity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CompanyActivity)));
    }
    value = object.section;
    if (value != null) {
      result
        ..add('section')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(CompanySection)));
    }
    return result;
  }

  @override
  GovCompanyViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GovCompanyViewModelBuilder();

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
        case 'isInMansouraUniversity':
          result.isInMansouraUniversity = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'activity':
          result.activity.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CompanyActivity))
              as CompanyActivity);
          break;
        case 'section':
          result.section.replace(serializers.deserialize(value,
              specifiedType: const FullType(CompanySection)) as CompanySection);
          break;
      }
    }

    return result.build();
  }
}

class _$GovCompanyViewModel extends GovCompanyViewModel {
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
  final bool isInMansouraUniversity;
  @override
  final CompanyActivity activity;
  @override
  final CompanySection section;

  factory _$GovCompanyViewModel(
          [void Function(GovCompanyViewModelBuilder) updates]) =>
      (new GovCompanyViewModelBuilder()..update(updates)).build();

  _$GovCompanyViewModel._(
      {this.companyId,
      this.name,
      this.address,
      this.phone1,
      this.phone2,
      this.fax,
      this.notes,
      this.email,
      this.isVerified,
      this.isInMansouraUniversity,
      this.activity,
      this.section})
      : super._();

  @override
  GovCompanyViewModel rebuild(
          void Function(GovCompanyViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GovCompanyViewModelBuilder toBuilder() =>
      new GovCompanyViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GovCompanyViewModel &&
        companyId == other.companyId &&
        name == other.name &&
        address == other.address &&
        phone1 == other.phone1 &&
        phone2 == other.phone2 &&
        fax == other.fax &&
        notes == other.notes &&
        email == other.email &&
        isVerified == other.isVerified &&
        isInMansouraUniversity == other.isInMansouraUniversity &&
        activity == other.activity &&
        section == other.section;
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
                isInMansouraUniversity.hashCode),
            activity.hashCode),
        section.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GovCompanyViewModel')
          ..add('companyId', companyId)
          ..add('name', name)
          ..add('address', address)
          ..add('phone1', phone1)
          ..add('phone2', phone2)
          ..add('fax', fax)
          ..add('notes', notes)
          ..add('email', email)
          ..add('isVerified', isVerified)
          ..add('isInMansouraUniversity', isInMansouraUniversity)
          ..add('activity', activity)
          ..add('section', section))
        .toString();
  }
}

class GovCompanyViewModelBuilder
    implements Builder<GovCompanyViewModel, GovCompanyViewModelBuilder> {
  _$GovCompanyViewModel _$v;

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

  bool _isInMansouraUniversity;
  bool get isInMansouraUniversity => _$this._isInMansouraUniversity;
  set isInMansouraUniversity(bool isInMansouraUniversity) =>
      _$this._isInMansouraUniversity = isInMansouraUniversity;

  CompanyActivityBuilder _activity;
  CompanyActivityBuilder get activity =>
      _$this._activity ??= new CompanyActivityBuilder();
  set activity(CompanyActivityBuilder activity) => _$this._activity = activity;

  CompanySectionBuilder _section;
  CompanySectionBuilder get section =>
      _$this._section ??= new CompanySectionBuilder();
  set section(CompanySectionBuilder section) => _$this._section = section;

  GovCompanyViewModelBuilder() {
    GovCompanyViewModel._initializeBuilder(this);
  }

  GovCompanyViewModelBuilder get _$this {
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
      _isInMansouraUniversity = $v.isInMansouraUniversity;
      _activity = $v.activity?.toBuilder();
      _section = $v.section?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GovCompanyViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GovCompanyViewModel;
  }

  @override
  void update(void Function(GovCompanyViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GovCompanyViewModel build() {
    _$GovCompanyViewModel _$result;
    try {
      _$result = _$v ??
          new _$GovCompanyViewModel._(
              companyId: companyId,
              name: name,
              address: address,
              phone1: phone1,
              phone2: phone2,
              fax: fax,
              notes: notes,
              email: email,
              isVerified: isVerified,
              isInMansouraUniversity: isInMansouraUniversity,
              activity: _activity?.build(),
              section: _section?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'activity';
        _activity?.build();
        _$failedField = 'section';
        _section?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GovCompanyViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
