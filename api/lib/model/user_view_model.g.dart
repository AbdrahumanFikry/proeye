// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'user_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserViewModel> _$userViewModelSerializer =
    new _$UserViewModelSerializer();

class _$UserViewModelSerializer implements StructuredSerializer<UserViewModel> {
  @override
  final Iterable<Type> types = const [UserViewModel, _$UserViewModel];
  @override
  final String wireName = 'UserViewModel';

  @override
  Iterable<Object> serialize(Serializers serializers, UserViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
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
    value = object.jobDesc;
    if (value != null) {
      result
        ..add('jobDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameAr;
    if (value != null) {
      result
        ..add('nameAr')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
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
    value = object.firstLogin;
    if (value != null) {
      result
        ..add('firstLogin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isGlobalReviewer;
    if (value != null) {
      result
        ..add('isGlobalReviewer')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  UserViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'jobDesc':
          result.jobDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nameAr':
          result.nameAr = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firstLogin':
          result.firstLogin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isGlobalReviewer':
          result.isGlobalReviewer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$UserViewModel extends UserViewModel {
  @override
  final String id;
  @override
  final String email;
  @override
  final String jobDesc;
  @override
  final String userName;
  @override
  final String nameAr;
  @override
  final String photoUrl;
  @override
  final String address;
  @override
  final bool firstLogin;
  @override
  final bool isActive;
  @override
  final String role;
  @override
  final String phoneNumber;
  @override
  final bool isGlobalReviewer;

  factory _$UserViewModel([void Function(UserViewModelBuilder) updates]) =>
      (new UserViewModelBuilder()..update(updates)).build();

  _$UserViewModel._(
      {this.id,
      this.email,
      this.jobDesc,
      this.userName,
      this.nameAr,
      this.photoUrl,
      this.address,
      this.firstLogin,
      this.isActive,
      this.role,
      this.phoneNumber,
      this.isGlobalReviewer})
      : super._();

  @override
  UserViewModel rebuild(void Function(UserViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserViewModelBuilder toBuilder() => new UserViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserViewModel &&
        id == other.id &&
        email == other.email &&
        jobDesc == other.jobDesc &&
        userName == other.userName &&
        nameAr == other.nameAr &&
        photoUrl == other.photoUrl &&
        address == other.address &&
        firstLogin == other.firstLogin &&
        isActive == other.isActive &&
        role == other.role &&
        phoneNumber == other.phoneNumber &&
        isGlobalReviewer == other.isGlobalReviewer;
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
                                            $jc($jc(0, id.hashCode),
                                                email.hashCode),
                                            jobDesc.hashCode),
                                        userName.hashCode),
                                    nameAr.hashCode),
                                photoUrl.hashCode),
                            address.hashCode),
                        firstLogin.hashCode),
                    isActive.hashCode),
                role.hashCode),
            phoneNumber.hashCode),
        isGlobalReviewer.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserViewModel')
          ..add('id', id)
          ..add('email', email)
          ..add('jobDesc', jobDesc)
          ..add('userName', userName)
          ..add('nameAr', nameAr)
          ..add('photoUrl', photoUrl)
          ..add('address', address)
          ..add('firstLogin', firstLogin)
          ..add('isActive', isActive)
          ..add('role', role)
          ..add('phoneNumber', phoneNumber)
          ..add('isGlobalReviewer', isGlobalReviewer))
        .toString();
  }
}

class UserViewModelBuilder
    implements Builder<UserViewModel, UserViewModelBuilder> {
  _$UserViewModel _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _jobDesc;
  String get jobDesc => _$this._jobDesc;
  set jobDesc(String jobDesc) => _$this._jobDesc = jobDesc;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _nameAr;
  String get nameAr => _$this._nameAr;
  set nameAr(String nameAr) => _$this._nameAr = nameAr;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  bool _firstLogin;
  bool get firstLogin => _$this._firstLogin;
  set firstLogin(bool firstLogin) => _$this._firstLogin = firstLogin;

  bool _isActive;
  bool get isActive => _$this._isActive;
  set isActive(bool isActive) => _$this._isActive = isActive;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool _isGlobalReviewer;
  bool get isGlobalReviewer => _$this._isGlobalReviewer;
  set isGlobalReviewer(bool isGlobalReviewer) =>
      _$this._isGlobalReviewer = isGlobalReviewer;

  UserViewModelBuilder() {
    UserViewModel._initializeBuilder(this);
  }

  UserViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _jobDesc = $v.jobDesc;
      _userName = $v.userName;
      _nameAr = $v.nameAr;
      _photoUrl = $v.photoUrl;
      _address = $v.address;
      _firstLogin = $v.firstLogin;
      _isActive = $v.isActive;
      _role = $v.role;
      _phoneNumber = $v.phoneNumber;
      _isGlobalReviewer = $v.isGlobalReviewer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserViewModel;
  }

  @override
  void update(void Function(UserViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserViewModel build() {
    final _$result = _$v ??
        new _$UserViewModel._(
            id: id,
            email: email,
            jobDesc: jobDesc,
            userName: userName,
            nameAr: nameAr,
            photoUrl: photoUrl,
            address: address,
            firstLogin: firstLogin,
            isActive: isActive,
            role: role,
            phoneNumber: phoneNumber,
            isGlobalReviewer: isGlobalReviewer);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
