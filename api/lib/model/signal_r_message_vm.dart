//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/self_or_other_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signal_r_message_vm.g.dart';

abstract class SignalRMessageVM
    implements Built<SignalRMessageVM, SignalRMessageVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'messageId')
  String get messageId;

  @nullable
  @BuiltValueField(wireName: r'issuedDate')
  DateTime get issuedDate;

  @nullable
  @BuiltValueField(wireName: r'issuerId')
  String get issuerId;

  @nullable
  @BuiltValueField(wireName: r'issuerName')
  String get issuerName;

  @nullable
  @BuiltValueField(wireName: r'content')
  String get content;

  @nullable
  @BuiltValueField(wireName: r'attachments')
  BuiltList<AppFileViewModel> get attachments;

  @nullable
  @BuiltValueField(wireName: r'selfOrOther')
  SelfOrOtherEnum get selfOrOther;
  // enum selfOrOtherEnum {  Self,  Other,  };

  @nullable
  @BuiltValueField(wireName: r'isPinned')
  bool get isPinned;

  @nullable
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  @nullable
  @BuiltValueField(wireName: r'chatRoomId')
  String get chatRoomId;

  // Boilerplate code needed to wire-up generated code
  SignalRMessageVM._();

  static void _initializeBuilder(SignalRMessageVMBuilder b) => b;

  factory SignalRMessageVM([void updates(SignalRMessageVMBuilder b)]) =
      _$SignalRMessageVM;
  static Serializer<SignalRMessageVM> get serializer =>
      _$signalRMessageVMSerializer;
}
