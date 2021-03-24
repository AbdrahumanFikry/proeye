import 'package:get/get.dart';

import 'package:pro_eye/app/modules/addNewAgency/bindings/add_new_agency_binding.dart';
import 'package:pro_eye/app/modules/addNewAgency/views/add_new_agency_view.dart';
import 'package:pro_eye/app/modules/add_new_execution_agency/bindings/add_new_execution_agency_binding.dart';
import 'package:pro_eye/app/modules/add_new_execution_agency/views/add_new_execution_agency_view.dart';
import 'package:pro_eye/app/modules/analysis/bindings/analysis_binding.dart';
import 'package:pro_eye/app/modules/analysis/views/analysis_view.dart';
import 'package:pro_eye/app/modules/attachments/bindings/attachments_binding.dart';
import 'package:pro_eye/app/modules/attachments/views/attachments_view.dart';
import 'package:pro_eye/app/modules/auth/bindings/auth_binding.dart';
import 'package:pro_eye/app/modules/auth/views/auth_view.dart';
import 'package:pro_eye/app/modules/chat/bindings/chat_binding.dart';
import 'package:pro_eye/app/modules/chat/views/chat_view.dart';
import 'package:pro_eye/app/modules/company_details/bindings/company_details_binding.dart';
import 'package:pro_eye/app/modules/company_details/views/company_details_view.dart';
import 'package:pro_eye/app/modules/create_or_update_task/bindings/create_or_update_task_binding.dart';
import 'package:pro_eye/app/modules/create_or_update_task/views/create_or_update_task_view.dart';
import 'package:pro_eye/app/modules/extract_details/bindings/extract_details_binding.dart';
import 'package:pro_eye/app/modules/extract_details/views/extract_details_view.dart';
import 'package:pro_eye/app/modules/new_project_request/bindings/new_project_request_binding.dart';
import 'package:pro_eye/app/modules/new_project_request/views/new_project_request_view.dart';
import 'package:pro_eye/app/modules/new_project_request_select_gov_company/bindings/new_project_request_select_gov_company_binding.dart';
import 'package:pro_eye/app/modules/new_project_request_select_gov_company/views/new_project_request_select_gov_company_view.dart';
import 'package:pro_eye/app/modules/project_details/bindings/project_details_binding.dart';
import 'package:pro_eye/app/modules/project_details/views/project_details_view.dart';
import 'package:pro_eye/app/modules/project_details_extracts/bindings/project_details_extracts_binding.dart';
import 'package:pro_eye/app/modules/project_details_extracts/views/project_details_extracts_view.dart';
import 'package:pro_eye/app/modules/project_details_technical_reports/bindings/project_details_technical_reports_binding.dart';
import 'package:pro_eye/app/modules/project_details_technical_reports/views/project_details_technical_reports_view.dart';
import 'package:pro_eye/app/modules/projects/bindings/projects_binding.dart';
import 'package:pro_eye/app/modules/projects/views/projects_view.dart';
import 'package:pro_eye/app/modules/projects_requests/bindings/projects_requests_binding.dart';
import 'package:pro_eye/app/modules/projects_requests/views/projects_requests_view.dart';
import 'package:pro_eye/app/modules/rooms/bindings/rooms_binding.dart';
import 'package:pro_eye/app/modules/rooms/views/rooms_view.dart';
import 'package:pro_eye/app/modules/search/bindings/search_binding.dart';
import 'package:pro_eye/app/modules/search/views/search_view.dart';
import 'package:pro_eye/app/modules/single_committee/bindings/single_committee_binding.dart';
import 'package:pro_eye/app/modules/single_committee/views/single_committee_view.dart';
import 'package:pro_eye/app/modules/single_project_request_details/bindings/single_project_request_details_binding.dart';
import 'package:pro_eye/app/modules/single_project_request_details/views/single_project_request_details_view.dart';
import 'package:pro_eye/app/modules/single_project_request_details_select_exec_company/bindings/single_project_request_details_select_exec_company_binding.dart';
import 'package:pro_eye/app/modules/single_project_request_details_select_exec_company/views/single_project_request_details_select_exec_company_view.dart';
import 'package:pro_eye/app/modules/single_task/bindings/single_task_binding.dart';
import 'package:pro_eye/app/modules/single_task/views/single_task_view.dart';
import 'package:pro_eye/app/modules/single_team/bindings/single_team_binding.dart';
import 'package:pro_eye/app/modules/single_team/views/single_team_view.dart';
import 'package:pro_eye/app/modules/single_technical_report/bindings/single_technical_report_binding.dart';
import 'package:pro_eye/app/modules/single_technical_report/views/single_technical_report_view.dart';
import 'package:pro_eye/app/modules/splash/bindings/splash_binding.dart';
import 'package:pro_eye/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.AUTH,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.PROJECTS,
      page: () => ProjectsView(),
      binding: ProjectsBinding(),
    ),
    GetPage(
      name: Routes.ANALYSIS,
      page: () => AnalysisView(),
      binding: AnalysisBinding(),
    ),
    GetPage(
      name: Routes.SINGLE_COMMITTEE,
      page: () => SingleCommitteeView(),
      binding: SingleCommitteeBinding(),
    ),
    GetPage(
      name: Routes.PROJECTS_REQUEST,
      page: () => ProjectsRequestsView(),
      binding: ProjectsRequestsBinding(),
    ),
    GetPage(
      name: Routes.NEW_PROJECT_REQUEST,
      page: () => NewProjectRequestView(),
      binding: NewProjectRequestBinding(),
    ),
    GetPage(
      name: Routes.ATTACHMENTS,
      page: () => AttachmentsView(),
      binding: AttachmentsBinding(),
    ),
    GetPage(
      name: Routes.PROJECTS_DETAILS,
      page: () => ProjectDetailsView(),
      binding: ProjectDetailsBinding(),
    ),
    GetPage(
      name: Routes.SINGLE_PROJECTS_REQUEST_DETAILS,
      page: () => SingleProjectRequestDetailsView(),
      binding: SingleProjectRequestDetailsBinding(),
    ),
    GetPage(
      name: Routes.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: Routes.ROOMS,
      page: () => RoomsView(),
      binding: RoomsBinding(),
    ),
    GetPage(
      name: Routes.EXTRACTS_DETAILS,
      page: () => ExtractDetailsView(),
      binding: ExtractDetailsBinding(),
    ),
    GetPage(
      name: Routes.ADD_NEW_AGENCY,
      page: () => AddNewAgencyView(),
      binding: AddNewAgencyBinding(),
    ),
    GetPage(
      name: Routes.ADD_NEW_EXECUTION_AGENCY,
      page: () => AddNewExecutionAgencyView(),
      binding: AddNewExecutionAgencyBinding(),
    ),
    GetPage(
      name: Routes.SINGLE_TASK,
      page: () => SingleTaskView(),
      binding: SingleTaskBinding(),
    ),
    GetPage(
      name: Routes.SINGLE_TEAM,
      page: () => SingleTeamView(),
      binding: SingleTeamBinding(),
    ),
    GetPage(
      name: Routes.CREATE_OR_UPDATE_TASK,
      page: () => CreateOrUpdateTaskView(),
      binding: CreateOrUpdateTaskBinding(),
    ),
    GetPage(
      name: Routes.PROJECT_DETAILS_EXTRACTS,
      page: () => ProjectDetailsExtractsView(),
      binding: ProjectDetailsExtractsBinding(),
    ),
    GetPage(
      name: Routes.NEW_PROJECT_REQUEST_SELECT_GOV_COMPANY,
      page: () => NewProjectRequestSelectGovCompanyView(),
      binding: NewProjectRequestSelectGovCompanyBinding(),
    ),
    GetPage(
      name: Routes.SINGLE_PROJECT_REQUEST_DETAILS_SELECT_EXEC_COMPANY,
      page: () => SingleProjectRequestDetailsSelectExecCompanyView(),
      binding: SingleProjectRequestDetailsSelectExecCompanyBinding(),
    ),
    GetPage(
      name: Routes.COMPANY_DETAILS,
      page: () => CompanyDetailsView(),
      binding: CompanyDetailsBinding(),
    ),
    GetPage(
      name: Routes.PROJECT_DETAILS_TECHNICAL_REPORTS,
      page: () => ProjectDetailsTechnicalReportsView(),
      binding: ProjectDetailsTechnicalReportsBinding(),
    ),
    GetPage(
      name: Routes.SINGLE_TECHNICAL_REPORT,
      page: () => SingleTechnicalReportView(),
      binding: SingleTechnicalReportBinding(),
    ),
  ];
}
