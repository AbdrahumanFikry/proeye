// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'change_password_view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChangePasswordViewModel> _$changePasswordViewModelSerializer =
    new _$ChangePasswordViewModelSerializer();

class _$ChangePasswordViewModelSerializer
    implements StructuredSerializer<ChangePasswordViewModel> {
  @override
  final Iterable<Type> types = const [
    ChangePasswordViewModel,
    _$ChangePasswordViewModel
  ];
  @override
  final String wireName = 'ChangePasswordViewModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ChangePasswordViewModel object,
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
    value = object.oldPassword;
    if (value != null) {
      result
        ..add('oldPassword')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ChangePasswordViewModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChangePasswordViewModelBuilder();

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
        case 'oldPassword':
          result.oldPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ChangePasswordViewModel extends ChangePasswordViewModel {
  @override
  final String newPassword;
  @override
  final String confirmPassword;
  @override
  final String oldPassword;

  factory _$ChangePasswordViewModel(
          [void Function(ChangePasswordViewModelBuilder) updates]) =>
      (new ChangePasswordViewModelBuilder()..update(updates)).build();

  _$ChangePasswordViewModel._(
      {this.newPassword, this.confirmPassword, this.oldPassword})
      : super._();

  @override
  ChangePasswordViewModel rebuild(
          void Function(ChangePasswordViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePasswordViewModelBuilder toBuilder() =>
      new ChangePasswordViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePasswordViewModel &&
        newPassword == other.newPassword &&
        confirmPassword == other.confirmPassword &&
        oldPassword == other.oldPassword;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, newPassword.hashCode), confirmPassword.hashCode),
        oldPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ChangePasswordViewModel')
          ..add('newPassword', newPassword)
          ..add('confirmPassword', confirmPassword)
          ..add('oldPassword', oldPassword))
        .toString();
  }
}

class ChangePasswordViewModelBuilder
    implements
        Builder<ChangePasswordViewModel, ChangePasswordViewModelBuilder> {
  _$ChangePasswordViewModel _$v;

  String _newPassword;
  String get newPassword => _$this._newPassword;
  set newPassword(String newPassword) => _$this._newPassword = newPassword;

  String _confirmPassword;
  String get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  String _oldPassword;
  String get oldPassword => _$this._oldPassword;
  set oldPassword(String oldPassword) => _$this._oldPassword = oldPassword;

  ChangePasswordViewModelBuilder() {
    ChangePasswordViewModel._initializeBuilder(this);
  }

  ChangePasswordViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newPassword = $v.newPassword;
      _confirmPassword = $v.confirmPassword;
      _oldPassword = $v.oldPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePasswordViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePasswordViewModel;
  }

  @override
  void update(void Function(ChangePasswordViewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ChangePasswordViewModel build() {
    final _$result = _$v ??
        new _$ChangePasswordViewModel._(
            newPassword: newPassword,
            confirmPassword: confirmPassword,
            oldPassword: oldPassword);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
