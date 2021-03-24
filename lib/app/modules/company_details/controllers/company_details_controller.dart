import 'package:get/get.dart';
import 'package:proeye_api/model/execution_company_view_model.dart';
import 'package:proeye_api/model/gov_company_view_model.dart';

class CompanyDetailsController extends GetxController {
  final dynamic arg;

  CompanyDetailsController(this.arg);

  GovCompanyViewModel get asGov => arg is GovCompanyViewModel ? arg : null;
  ExecutionCompanyViewModel get asExec =>
      arg is ExecutionCompanyViewModel ? arg : null;

  String get title => asGov?.name ?? asExec?.name;
  String get phone1 => asGov?.phone1 ?? asExec?.phone1;
  String get phone2 => asGov?.phone2 ?? asExec?.phone2;
  String get email => asGov?.email ?? asExec?.email;
  bool get isVerified => asGov?.isVerified ?? asExec?.isVerified;

  String get companyRegister => asExec?.companyRegister;
  String get engLayer => asExec?.engLayer;

  bool get isInMansouraUniversity => asGov?.isInMansouraUniversity;
  String get activity => asGov?.activity?.name;
  String get section => asGov?.section?.name;
}
