//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'manager_vm.g.dart';

abstract class ManagerVM implements Built<ManagerVM, ManagerVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'position')
  String get position;

  @nullable
  @BuiltValueField(wireName: r'title')
  String get title;

  @nullable
  @BuiltValueField(wireName: r'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: r'email')
  String get email;

  @nullable
  @BuiltValueField(wireName: r'imageUrl')
  String get imageUrl;

  // Boilerplate code needed to wire-up generated code
  ManagerVM._();

  static void _initializeBuilder(ManagerVMBuilder b) => b;

  factory ManagerVM([void updates(ManagerVMBuilder b)]) = _$ManagerVM;
  static Serializer<ManagerVM> get serializer => _$managerVMSerializer;
}
