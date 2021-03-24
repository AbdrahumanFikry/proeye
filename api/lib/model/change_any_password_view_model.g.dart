// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'change_any_password_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChangeAnyPasswordViewModel> _$changeAnyPasswordViewModelSerializer =
    new _$ChangeAnyPasswordViewModelSerializer();

class _$ChangeAnyPasswordViewModelSerializer
    implements StructuredSerializer<ChangeAnyPasswordViewModel> {
  @override
  final Iterable<Type> types = const [
    ChangeAnyPasswordViewModel,
    _$ChangeAnyPasswordViewModel
  ];
  @override
  final String wireName = 'ChangeAnyPasswordViewModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ChangeAnyPasswordViewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.newPassword;
    if (value != null) {
      result
        ..add('newPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.confirmPassword;
    if (value != null) {
      result
        ..add('confirmPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ChangeAnyPasswordViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChangeAnyPasswordViewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'newPassword':
          result.newPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'confirmPassword':
          result.confirmPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ChangeAnyPasswordViewModel extends ChangeAnyPasswordViewModel {
  @override
  final String newPassword;
  @override
  final String confirmPassword;

  factory _$ChangeAnyPasswordViewModel(
          [void Function(ChangeAnyPasswordViewModelBuilder) updates]) =>
      (new ChangeAnyPasswordViewModelBuilder()..update(updates)).build();

  _$ChangeAnyPasswordViewModel._({this.newPassword, this.confirmPassword})
      : super._();

  @override
  ChangeAnyPasswordViewModel rebuild(
          void Function(ChangeAnyPasswordViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeAnyPasswordViewModelBuilder toBuilder() =>
      new ChangeAnyPasswordViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeAnyPasswordViewModel &&
        newPassword == other.newPassword &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, newPassword.hashCode), confirmPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangeAnyPasswordViewModel')
          ..add('newPassword', newPassword)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class ChangeAnyPasswordViewModelBuilder
    implements
        Builder<ChangeAnyPasswordViewModel, ChangeAnyPasswordViewModelBuilder> {
  _$ChangeAnyPasswordViewModel _$v;

  String _newPassword;
  String get newPassword => _$this._newPassword;
  set newPassword(String newPassword) => _$this._newPassword = newPassword;

  String _confirmPassword;
  String get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  ChangeAnyPasswordViewModelBuilder() {
    ChangeAnyPasswordViewModel._initializeBuilder(this);
  }

  ChangeAnyPasswordViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newPassword = $v.newPassword;
      _confirmPassword = $v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeAnyPasswordViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeAnyPasswordViewModel;
  }

  @override
  void update(void Function(ChangeAnyPasswordViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangeAnyPasswordViewModel build() {
    final _$result = _$v ??
        new _$ChangeAnyPasswordViewModel._(
            newPassword: newPassword, confirmPassword: confirmPassword);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
