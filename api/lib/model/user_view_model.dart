//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_view_model.g.dart';

abstract class UserViewModel
    implements Built<UserViewModel, UserViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: r'email')
  String get email;

  @nullable
  @BuiltValueField(wireName: r'jobDesc')
  String get jobDesc;

  @nullable
  @BuiltValueField(wireName: r'userName')
  String get userName;

  @nullable
  @BuiltValueField(wireName: r'nameAr')
  String get nameAr;

  @nullable
  @BuiltValueField(wireName: r'photoUrl')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: r'address')
  String get address;

  @nullable
  @BuiltValueField(wireName: r'firstLogin')
  bool get firstLogin;

  @nullable
  @BuiltValueField(wireName: r'isActive')
  bool get isActive;

  @nullable
  @BuiltValueField(wireName: r'role')
  String get role;

  @nullable
  @BuiltValueField(wireName: r'phoneNumber')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: r'isGlobalReviewer')
  bool get isGlobalReviewer;

  // Boilerplate code needed to wire-up generated code
  UserViewModel._();

  static void _initializeBuilder(UserViewModelBuilder b) => b;

  factory UserViewModel([void updates(UserViewModelBuilder b)]) =
      _$UserViewModel;
  static Serializer<UserViewModel> get serializer => _$userViewModelSerializer;
}
