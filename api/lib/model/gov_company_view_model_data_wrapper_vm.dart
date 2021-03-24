//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/gov_company_view_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gov_company_view_model_data_wrapper_vm.g.dart';

abstract class GovCompanyViewModelDataWrapperVM
    implements
        Built<GovCompanyViewModelDataWrapperVM,
            GovCompanyViewModelDataWrapperVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'data')
  GovCompanyViewModel get data;

  // Boilerplate code needed to wire-up generated code
  GovCompanyViewModelDataWrapperVM._();

  static void _initializeBuilder(GovCompanyViewModelDataWrapperVMBuilder b) =>
      b;

  factory GovCompanyViewModelDataWrapperVM(
          [void updates(GovCompanyViewModelDataWrapperVMBuilder b)]) =
      _$GovCompanyViewModelDataWrapperVM;
  static Serializer<GovCompanyViewModelDataWrapperVM> get serializer =>
      _$govCompanyViewModelDataWrapperVMSerializer;
}
