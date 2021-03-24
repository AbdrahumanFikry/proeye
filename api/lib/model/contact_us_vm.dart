//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contact_us_vm.g.dart';

abstract class ContactUsVM implements Built<ContactUsVM, ContactUsVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'address')
  String get address;

  @nullable
  @BuiltValueField(wireName: r'landlineNumber')
  String get landlineNumber;

  @nullable
  @BuiltValueField(wireName: r'email')
  String get email;

  // Boilerplate code needed to wire-up generated code
  ContactUsVM._();

  static void _initializeBuilder(ContactUsVMBuilder b) => b;

  factory ContactUsVM([void updates(ContactUsVMBuilder b)]) = _$ContactUsVM;
  static Serializer<ContactUsVM> get serializer => _$contactUsVMSerializer;
}
