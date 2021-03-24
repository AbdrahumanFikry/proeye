// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'token_bag_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TokenBagViewModel> _$tokenBagViewModelSerializer =
    new _$TokenBagViewModelSerializer();

class _$TokenBagViewModelSerializer
    implements StructuredSerializer<TokenBagViewModel> {
  @override
  final Iterable<Type> types = const [TokenBagViewModel, _$TokenBagViewModel];
  @override
  final String wireName = 'TokenBagViewModel';

  @override
  Iterable<Object> serialize(Serializers serializers, TokenBagViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.refreshTokenExpiryTime;
    if (value != null) {
      result
        ..add('refreshTokenExpiryTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.accessToken;
    if (value != null) {
      result
        ..add('accessToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refreshToken;
    if (value != null) {
      result
        ..add('refreshToken')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expiration;
    if (value != null) {
      result
        ..add('expiration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserViewModel)));
    }
    value = object.claims;
    if (value != null) {
      result
        ..add('claims')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ClaimViewModel)])));
    }
    return result;
  }

  @override
  TokenBagViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokenBagViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'refreshTokenExpiryTime':
          result.refreshTokenExpiryTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expiration':
          result.expiration = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserViewModel)) as UserViewModel);
          break;
        case 'claims':
          result.claims.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ClaimViewModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$TokenBagViewModel extends TokenBagViewModel {
  @override
  final DateTime refreshTokenExpiryTime;
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final DateTime expiration;
  @override
  final UserViewModel user;
  @override
  final BuiltList<ClaimViewModel> claims;

  factory _$TokenBagViewModel(
          [void Function(TokenBagViewModelBuilder) updates]) =>
      (new TokenBagViewModelBuilder()..update(updates)).build();

  _$TokenBagViewModel._(
      {this.refreshTokenExpiryTime,
      this.accessToken,
      this.refreshToken,
      this.expiration,
      this.user,
      this.claims})
      : super._();

  @override
  TokenBagViewModel rebuild(void Function(TokenBagViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenBagViewModelBuilder toBuilder() =>
      new TokenBagViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenBagViewModel &&
        refreshTokenExpiryTime == other.refreshTokenExpiryTime &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        expiration == other.expiration &&
        user == other.user &&
        claims == other.claims;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, refreshTokenExpiryTime.hashCode),
                        accessToken.hashCode),
                    refreshToken.hashCode),
                expiration.hashCode),
            user.hashCode),
        claims.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TokenBagViewModel')
          ..add('refreshTokenExpiryTime', refreshTokenExpiryTime)
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('expiration', expiration)
          ..add('user', user)
          ..add('claims', claims))
        .toString();
  }
}

class TokenBagViewModelBuilder
    implements Builder<TokenBagViewModel, TokenBagViewModelBuilder> {
  _$TokenBagViewModel _$v;

  DateTime _refreshTokenExpiryTime;
  DateTime get refreshTokenExpiryTime => _$this._refreshTokenExpiryTime;
  set refreshTokenExpiryTime(DateTime refreshTokenExpiryTime) =>
      _$this._refreshTokenExpiryTime = refreshTokenExpiryTime;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _refreshToken;
  String get refreshToken => _$this._refreshToken;
  set refreshToken(String refreshToken) => _$this._refreshToken = refreshToken;

  DateTime _expiration;
  DateTime get expiration => _$this._expiration;
  set expiration(DateTime expiration) => _$this._expiration = expiration;

  UserViewModelBuilder _user;
  UserViewModelBuilder get user => _$this._user ??= new UserViewModelBuilder();
  set user(UserViewModelBuilder user) => _$this._user = user;

  ListBuilder<ClaimViewModel> _claims;
  ListBuilder<ClaimViewModel> get claims =>
      _$this._claims ??= new ListBuilder<ClaimViewModel>();
  set claims(ListBuilder<ClaimViewModel> claims) => _$this._claims = claims;

  TokenBagViewModelBuilder() {
    TokenBagViewModel._initializeBuilder(this);
  }

  TokenBagViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshTokenExpiryTime = $v.refreshTokenExpiryTime;
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _expiration = $v.expiration;
      _user = $v.user?.toBuilder();
      _claims = $v.claims?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenBagViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenBagViewModel;
  }

  @override
  void update(void Function(TokenBagViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TokenBagViewModel build() {
    _$TokenBagViewModel _$result;
    try {
      _$result = _$v ??
          new _$TokenBagViewModel._(
              refreshTokenExpiryTime: refreshTokenExpiryTime,
              accessToken: accessToken,
              refreshToken: refreshToken,
              expiration: expiration,
              user: _user?.build(),
              claims: _claims?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'claims';
        _claims?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TokenBagViewModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
