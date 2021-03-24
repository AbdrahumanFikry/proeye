//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_any_password_view_model.g.dart';

abstract class ChangeAnyPasswordViewModel
    implements
        Built<ChangeAnyPasswordViewModel, ChangeAnyPasswordViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'newPassword')
  String get newPassword;

  @nullable
  @BuiltValueField(wireName: r'confirmPassword')
  String get confirmPassword;

  // Boilerplate code needed to wire-up generated code
  ChangeAnyPasswordViewModel._();

  static void _initializeBuilder(ChangeAnyPasswordViewModelBuilder b) => b;

  factory ChangeAnyPasswordViewModel(
          [void updates(ChangeAnyPasswordViewModelBuilder b)]) =
      _$ChangeAnyPasswordViewModel;
  static Serializer<ChangeAnyPasswordViewModel> get serializer =>
      _$changeAnyPasswordViewModelSerializer;
}
