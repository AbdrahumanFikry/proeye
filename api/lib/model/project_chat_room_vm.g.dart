// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'project_chat_room_vm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectChatRoomVM> _$projectChatRoomVMSerializer =
    new _$ProjectChatRoomVMSerializer();

class _$ProjectChatRoomVMSerializer
    implements StructuredSerializer<ProjectChatRoomVM> {
  @override
  final Iterable<Type> types = const [ProjectChatRoomVM, _$ProjectChatRoomVM];
  @override
  final String wireName = 'ProjectChatRoomVM';

  @override
  Iterable<Object> serialize(Serializers serializers, ProjectChatRoomVM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.roomName;
    if (value != null) {
      result
        ..add('roomName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isPublic;
    if (value != null) {
      result
        ..add('isPublic')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.roomId;
    if (value != null) {
      result
        ..add('roomId')
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
    value = object.participants;
    if (value != null) {
      result
        ..add('participants')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProjectChatParticipantVM)])));
    }
    value = object.pinnedMessages;
    if (value != null) {
      result
        ..add('pinnedMessages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(MessageViewModel)])));
    }
    return result;
  }

  @override
  ProjectChatRoomVM deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectChatRoomVMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'roomName':
          result.roomName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isPublic':
          result.isPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'roomId':
          result.roomId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'participants':
          result.participants.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ProjectChatParticipantVM)
              ])) as BuiltList<Object>);
          break;
        case 'pinnedMessages':
          result.pinnedMessages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(MessageViewModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProjectChatRoomVM extends ProjectChatRoomVM {
  @override
  final String roomName;
  @override
  final bool isPublic;
  @override
  final String roomId;
  @override
  final String photoUrl;
  @override
  final BuiltList<ProjectChatParticipantVM> participants;
  @override
  final BuiltList<MessageViewModel> pinnedMessages;

  factory _$ProjectChatRoomVM(
          [void Function(ProjectChatRoomVMBuilder) updates]) =>
      (new ProjectChatRoomVMBuilder()..update(updates)).build();

  _$ProjectChatRoomVM._(
      {this.roomName,
      this.isPublic,
      this.roomId,
      this.photoUrl,
      this.participants,
      this.pinnedMessages})
      : super._();

  @override
  ProjectChatRoomVM rebuild(void Function(ProjectChatRoomVMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectChatRoomVMBuilder toBuilder() =>
      new ProjectChatRoomVMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectChatRoomVM &&
        roomName == other.roomName &&
        isPublic == other.isPublic &&
        roomId == other.roomId &&
        photoUrl == other.photoUrl &&
        participants == other.participants &&
        pinnedMessages == other.pinnedMessages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, roomName.hashCode), isPublic.hashCode),
                    roomId.hashCode),
                photoUrl.hashCode),
            participants.hashCode),
        pinnedMessages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProjectChatRoomVM')
          ..add('roomName', roomName)
          ..add('isPublic', isPublic)
          ..add('roomId', roomId)
          ..add('photoUrl', photoUrl)
          ..add('participants', participants)
          ..add('pinnedMessages', pinnedMessages))
        .toString();
  }
}

class ProjectChatRoomVMBuilder
    implements Builder<ProjectChatRoomVM, ProjectChatRoomVMBuilder> {
  _$ProjectChatRoomVM _$v;

  String _roomName;
  String get roomName => _$this._roomName;
  set roomName(String roomName) => _$this._roomName = roomName;

  bool _isPublic;
  bool get isPublic => _$this._isPublic;
  set isPublic(bool isPublic) => _$this._isPublic = isPublic;

  String _roomId;
  String get roomId => _$this._roomId;
  set roomId(String roomId) => _$this._roomId = roomId;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  ListBuilder<ProjectChatParticipantVM> _participants;
  ListBuilder<ProjectChatParticipantVM> get participants =>
      _$this._participants ??= new ListBuilder<ProjectChatParticipantVM>();
  set participants(ListBuilder<ProjectChatParticipantVM> participants) =>
      _$this._participants = participants;

  ListBuilder<MessageViewModel> _pinnedMessages;
  ListBuilder<MessageViewModel> get pinnedMessages =>
      _$this._pinnedMessages ??= new ListBuilder<MessageViewModel>();
  set pinnedMessages(ListBuilder<MessageViewModel> pinnedMessages) =>
      _$this._pinnedMessages = pinnedMessages;

  ProjectChatRoomVMBuilder() {
    ProjectChatRoomVM._initializeBuilder(this);
  }

  ProjectChatRoomVMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roomName = $v.roomName;
      _isPublic = $v.isPublic;
      _roomId = $v.roomId;
      _photoUrl = $v.photoUrl;
      _participants = $v.participants?.toBuilder();
      _pinnedMessages = $v.pinnedMessages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectChatRoomVM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectChatRoomVM;
  }

  @override
  void update(void Function(ProjectChatRoomVMBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProjectChatRoomVM build() {
    _$ProjectChatRoomVM _$result;
    try {
      _$result = _$v ??
          new _$ProjectChatRoomVM._(
              roomName: roomName,
              isPublic: isPublic,
              roomId: roomId,
              photoUrl: photoUrl,
              participants: _participants?.build(),
              pinnedMessages: _pinnedMessages?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'participants';
        _participants?.build();
        _$failedField = 'pinnedMessages';
        _pinnedMessages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProjectChatRoomVM', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
