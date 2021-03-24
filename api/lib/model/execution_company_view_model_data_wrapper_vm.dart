//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:proeye_api/model/execution_company_view_model.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'execution_company_view_model_data_wrapper_vm.g.dart';

abstract class ExecutionCompanyViewModelDataWrapperVM
    implements
        Built<ExecutionCompanyViewModelDataWrapperVM,
            ExecutionCompanyViewModelDataWrapperVMBuilder> {
  @nullable
  @BuiltValueField(wireName: r'data')
  ExecutionCompanyViewModel get data;

  // Boilerplate code needed to wire-up generated code
  ExecutionCompanyViewModelDataWrapperVM._();

  static void _initializeBuilder(
          ExecutionCompanyViewModelDataWrapperVMBuilder b) =>
      b;

  factory ExecutionCompanyViewModelDataWrapperVM(
          [void updates(ExecutionCompanyViewModelDataWrapperVMBuilder b)]) =
      _$ExecutionCompanyViewModelDataWrapperVM;
  static Serializer<ExecutionCompanyViewModelDataWrapperVM> get serializer =>
      _$executionCompanyViewModelDataWrapperVMSerializer;
}
