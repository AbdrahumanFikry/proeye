//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/model/req_committee_vm.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'req_executive_manager_edit_project_request_view_model.g.dart';

abstract class ReqExecutiveManagerEditProjectRequestViewModel
    implements
        Built<ReqExecutiveManagerEditProjectRequestViewModel,
            ReqExecutiveManagerEditProjectRequestViewModelBuilder> {
  @nullable
  @BuiltValueField(wireName: r'committees')
  BuiltList<ReqCommitteeVM> get committees;

  @nullable
  @BuiltValueField(wireName: r'projectManagerId')
  String get projectManagerId;

  @nullable
  @BuiltValueField(wireName: r'startDate')
  DateTime get startDate;

  @nullable
  @BuiltValueField(wireName: r'expectedDuration')
  int get expectedDuration;

  @nullable
  @BuiltValueField(wireName: r'expectedCostInPounds')
  double get expectedCostInPounds;

  @nullable
  @BuiltValueField(wireName: r'relativeFileUrls')
  BuiltList<String> get relativeFileUrls;

  // Boilerplate code needed to wire-up generated code
  ReqExecutiveManagerEditProjectRequestViewModel._();

  static void _initializeBuilder(
          ReqExecutiveManagerEditProjectRequestViewModelBuilder b) =>
      b;

  factory ReqExecutiveManagerEditProjectRequestViewModel(
          [void updates(
              ReqExecutiveManagerEditProjectRequestViewModelBuilder b)]) =
      _$ReqExecutiveManagerEditProjectRequestViewModel;
  static Serializer<ReqExecutiveManagerEditProjectRequestViewModel>
      get serializer =>
          _$reqExecutiveManagerEditProjectRequestViewModelSerializer;
}
