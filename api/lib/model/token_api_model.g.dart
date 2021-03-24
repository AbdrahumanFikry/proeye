// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'token_api_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TokenApiModel> _$tokenApiModelSerializer =
    new _$TokenApiModelSerializer();

class _$TokenApiModelSerializer implements StructuredSerializer<TokenApiModel> {
  @override
  final Iterable<Type> types = const [TokenApiModel, _$TokenApiModel];
  @override
  final String wireName = 'TokenApiModel';

  @override
  Iterable<Object> serialize(Serializers serializers, TokenApiModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
    return result;
  }

  @override
  TokenApiModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokenApiModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'accessToken':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refreshToken':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TokenApiModel extends TokenApiModel {
  @override
  final String accessToken;
  @override
  final String refreshToken;

  factory _$TokenApiModel([void Function(TokenApiModelBuilder) updates]) =>
      (new TokenApiModelBuilder()..update(updates)).build();

  _$TokenApiModel._({this.accessToken, this.refreshToken}) : super._();

  @override
  TokenApiModel rebuild(void Function(TokenApiModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenApiModelBuilder toBuilder() => new TokenApiModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenApiModel &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, accessToken.hashCode), refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TokenApiModel')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class TokenApiModelBuilder
    implements Builder<TokenApiModel, TokenApiModelBuilder> {
  _$TokenApiModel _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _refreshToken;
  String get refreshToken => _$this._refreshToken;
  set refreshToken(String refreshToken) => _$this._refreshToken = refreshToken;

  TokenApiModelBuilder() {
    TokenApiModel._initializeBuilder(this);
  }

  TokenApiModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenApiModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenApiModel;
  }

  @override
  void update(void Function(TokenApiModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TokenApiModel build() {
    final _$result = _$v ??
        new _$TokenApiModel._(
            accessToken: accessToken, refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
