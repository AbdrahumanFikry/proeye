//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'general_post_vm.g.dart';

abstract class GeneralPostVM
    implements Built<GeneralPostVM, GeneralPostVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'postId')
  String get postId;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'desc')
  String get desc;

  @nullable
  @BuiltValueField(wireName: r'fullImageUrls')
  BuiltList<String> get fullImageUrls;

  // Boilerplate code needed to wire-up generated code
  GeneralPostVM._();

  static void _initializeBuilder(GeneralPostVMBuilder b) => b;

  factory GeneralPostVM([void updates(GeneralPostVMBuilder b)]) =
      _$GeneralPostVM;
  static Serializer<GeneralPostVM> get serializer => _$generalPostVMSerializer;
}
