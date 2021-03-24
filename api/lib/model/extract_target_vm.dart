//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:proeye_api/model/user_view_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extract_target_vm.g.dart';

abstract class ExtractTargetVM
    implements Built<ExtractTargetVM, ExtractTargetVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'canCurrentUserReview')
  bool get canCurrentUserReview;

  @nullable
  @BuiltValueField(wireName: r'targetGlobalRoleOrProjectRole')
  String get targetGlobalRoleOrProjectRole;

  @nullable
  @BuiltValueField(wireName: r'reviewResult')
  bool get reviewResult;

  @nullable
  @BuiltValueField(wireName: r'reviewedBy')
  UserViewModel get reviewedBy;

  @nullable
  @BuiltValueField(wireName: r'reviewDesc')
  String get reviewDesc;

  @nullable
  @BuiltValueField(wireName: r'reviewFiles')
  BuiltList<AppFileViewModel> get reviewFiles;

  // Boilerplate code needed to wire-up generated code
  ExtractTargetVM._();

  static void _initializeBuilder(ExtractTargetVMBuilder b) => b;

  factory ExtractTargetVM([void updates(ExtractTargetVMBuilder b)]) =
      _$ExtractTargetVM;
  static Serializer<ExtractTargetVM> get serializer =>
      _$extractTargetVMSerializer;
}
