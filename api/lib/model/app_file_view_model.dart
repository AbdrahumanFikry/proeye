//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_file_view_model.g.dart';

abstract class AppFileViewModel
    implements Built<AppFileViewModel, AppFileViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'fullUrl')
  String get fullUrl;

  @nullable
  @BuiltValueField(wireName: r'uploaderId')
  String get uploaderId;

  @nullable
  @BuiltValueField(wireName: r'fileName')
  String get fileName;

  @nullable
  @BuiltValueField(wireName: r'tag')
  String get tag;

  @nullable
  @BuiltValueField(wireName: r'uploadedAt')
  DateTime get uploadedAt;

  @nullable
  @BuiltValueField(wireName: r'relativeUrl')
  String get relativeUrl;

  @nullable
  @BuiltValueField(wireName: r'md5Hash')
  String get md5Hash;

  // Boilerplate code needed to wire-up generated code
  AppFileViewModel._();

  static void _initializeBuilder(AppFileViewModelBuilder b) => b;

  factory AppFileViewModel([void updates(AppFileViewModelBuilder b)]) =
      _$AppFileViewModel;
  static Serializer<AppFileViewModel> get serializer =>
      _$appFileViewModelSerializer;
}
