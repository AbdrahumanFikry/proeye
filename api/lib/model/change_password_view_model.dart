//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_password_view_model.g.dart';

abstract class ChangePasswordViewModel
    implements Built<ChangePasswordViewModel, ChangePasswordViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'newPassword')
  String get newPassword;

  @nullable
  @BuiltValueField(wireName: r'confirmPassword')
  String get confirmPassword;

  @nullable
  @BuiltValueField(wireName: r'oldPassword')
  String get oldPassword;

  // Boilerplate code needed to wire-up generated code
  ChangePasswordViewModel._();

  static void _initializeBuilder(ChangePasswordViewModelBuilder b) => b;

  factory ChangePasswordViewModel(
          [void updates(ChangePasswordViewModelBuilder b)]) =
      _$ChangePasswordViewModel;
  static Serializer<ChangePasswordViewModel> get serializer =>
      _$changePasswordViewModelSerializer;
}
