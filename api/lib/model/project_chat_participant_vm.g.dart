// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_chat_participant_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectChatParticipantVM> _$projectChatParticipantVMSerializer =
    new _$ProjectChatParticipantVMSerializer();

class _$ProjectChatParticipantVMSerializer
    implements StructuredSerializer<ProjectChatParticipantVM> {
  @override
  final Iterable<Type> types = const [
    ProjectChatParticipantVM,
    _$ProjectChatParticipantVM
  ];
  @override
  final String wireName = 'ProjectChatParticipantVM';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProjectChatParticipantVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserViewModel)));
    }
    value = object.isAdmin;
    if (value != null) {
      result
        ..add('isAdmin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ProjectChatParticipantVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectChatParticipantVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserViewModel)) as UserViewModel);
          break;
        case 'isAdmin':
          result.isAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectChatParticipantVM extends ProjectChatParticipantVM {
  @override
  final UserViewModel user;
  @override
  final bool isAdmin;

  factory _$ProjectChatParticipantVM(
          [void Function(ProjectChatParticipantVMBuilder) updates]) =>
      (new ProjectChatParticipantVMBuilder()..update(updates)).build();

  _$ProjectChatParticipantVM._({this.user, this.isAdmin}) : super._();

  @override
  ProjectChatParticipantVM rebuild(
          void Function(ProjectChatParticipantVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectChatParticipantVMBuilder toBuilder() =>
      new ProjectChatParticipantVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectChatParticipantVM &&
        user == other.user &&
        isAdmin == other.isAdmin;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), isAdmin.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectChatParticipantVM')
          ..add('user', user)
          ..add('isAdmin', isAdmin))
        .toString();
  }
}

class ProjectChatParticipantVMBuilder
    implements
        Builder<ProjectChatParticipantVM, ProjectChatParticipantVMBuilder> {
  _$ProjectChatParticipantVM _$v;

  UserViewModelBuilder _user;
  UserViewModelBuilder get user => _$this._user ??= new UserViewModelBuilder();
  set user(UserViewModelBuilder user) => _$this._user = user;

  bool _isAdmin;
  bool get isAdmin => _$this._isAdmin;
  set isAdmin(bool isAdmin) => _$this._isAdmin = isAdmin;

  ProjectChatParticipantVMBuilder() {
    ProjectChatParticipantVM._initializeBuilder(this);
  }

  ProjectChatParticipantVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _isAdmin = $v.isAdmin;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectChatParticipantVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectChatParticipantVM;
  }

  @override
  void update(void Function(ProjectChatParticipantVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectChatParticipantVM build() {
    _$ProjectChatParticipantVM _$result;
    try {
      _$result = _$v ??
          new _$ProjectChatParticipantVM._(
              user: _user?.build(), isAdmin: isAdmin);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectChatParticipantVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
