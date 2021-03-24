//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/user_view_model.dart';
import 'package:proeye_api/model/self_or_other_enum.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_vm.g.dart';

abstract class CommentVM implements Built<CommentVM, CommentVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'comment')
  String get comment;

  @nullable
  @BuiltValueField(wireName: r'issuedAt')
  DateTime get issuedAt;

  @nullable
  @BuiltValueField(wireName: r'commenter')
  UserViewModel get commenter;

  @nullable
  @BuiltValueField(wireName: r'selfOrOther')
  SelfOrOtherEnum get selfOrOther;
  // enum selfOrOtherEnum {  Self,  Other,  };

  // Boilerplate code needed to wire-up generated code
  CommentVM._();

  static void _initializeBuilder(CommentVMBuilder b) => b;

  factory CommentVM([void updates(CommentVMBuilder b)]) = _$CommentVM;
  static Serializer<CommentVM> get serializer => _$commentVMSerializer;
}
