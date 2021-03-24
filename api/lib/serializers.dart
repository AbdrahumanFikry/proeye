library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:proeye_api/model/abstract_general_activity_vm.dart';
import 'package:proeye_api/model/abstract_general_section_vm.dart';
import 'package:proeye_api/model/add_claim_view_model.dart';
import 'package:proeye_api/model/app_file_view_model.dart';
import 'package:proeye_api/model/boolean_data_wrapper_vm.dart';
import 'package:proeye_api/model/center_main_work_vm.dart';
import 'package:proeye_api/model/change_any_password_view_model.dart';
import 'package:proeye_api/model/change_password_view_model.dart';
import 'package:proeye_api/model/claim_view_model.dart';
import 'package:proeye_api/model/colored_danger_zone_vm.dart';
import 'package:proeye_api/model/comment_vm.dart';
import 'package:proeye_api/model/committee_type_enum.dart';
import 'package:proeye_api/model/company_activity.dart';
import 'package:proeye_api/model/company_section.dart';
import 'package:proeye_api/model/company_user_relation_types_enum.dart';
import 'package:proeye_api/model/complete_project_details_vm.dart';
import 'package:proeye_api/model/consulting_center_role_enum.dart';
import 'package:proeye_api/model/contact_us_vm.dart';
import 'package:proeye_api/model/detailed_general_activity_vm.dart';
import 'package:proeye_api/model/detailed_general_section_vm.dart';
import 'package:proeye_api/model/eng_management_director_simple_project_details_view_model.dart';
import 'package:proeye_api/model/execution_company_view_model.dart';
import 'package:proeye_api/model/execution_company_view_model_data_wrapper_vm.dart';
import 'package:proeye_api/model/execution_company_view_model_paginated_response.dart';
import 'package:proeye_api/model/executive_manager_simple_project_details_view_model.dart';
import 'package:proeye_api/model/extract_target_vm.dart';
import 'package:proeye_api/model/general_post_vm.dart';
import 'package:proeye_api/model/gov_company_view_model.dart';
import 'package:proeye_api/model/gov_company_view_model_data_wrapper_vm.dart';
import 'package:proeye_api/model/gov_company_view_model_paginated_response.dart';
import 'package:proeye_api/model/govs_cities_view_model_city.dart';
import 'package:proeye_api/model/govs_cities_view_model_gov.dart';
import 'package:proeye_api/model/int32_data_wrapper_vm.dart';
import 'package:proeye_api/model/introduction_vm.dart';
import 'package:proeye_api/model/manager_vm.dart';
import 'package:proeye_api/model/message_view_model.dart';
import 'package:proeye_api/model/message_view_model_paginated_response.dart';
import 'package:proeye_api/model/per_project_user_role_enum.dart';
import 'package:proeye_api/model/per_project_user_role_vm.dart';
import 'package:proeye_api/model/project_abstract_committee_vm.dart';
import 'package:proeye_api/model/project_abstract_task_vm.dart';
import 'package:proeye_api/model/project_abstract_view_model.dart';
import 'package:proeye_api/model/project_abstract_view_model_paginated_response.dart';
import 'package:proeye_api/model/project_chat_participant_vm.dart';
import 'package:proeye_api/model/project_chat_room_abstract_vm.dart';
import 'package:proeye_api/model/project_chat_room_vm.dart';
import 'package:proeye_api/model/project_committee_vm.dart';
import 'package:proeye_api/model/project_extract_abstract_vm.dart';
import 'package:proeye_api/model/project_extract_abstract_vm_paginated_response.dart';
import 'package:proeye_api/model/project_extract_vm.dart';
import 'package:proeye_api/model/project_name_id.dart';
import 'package:proeye_api/model/project_requester_info.dart';
import 'package:proeye_api/model/project_task_vm.dart';
import 'package:proeye_api/model/project_team_vm.dart';
import 'package:proeye_api/model/req_change_committee_team.dart';
import 'package:proeye_api/model/req_committee_vm.dart';
import 'package:proeye_api/model/req_complete_task.dart';
import 'package:proeye_api/model/req_create_task_vm.dart';
import 'package:proeye_api/model/req_edit_project_info.dart';
import 'package:proeye_api/model/req_executive_manager_complete_project_request_view_model.dart';
import 'package:proeye_api/model/req_executive_manager_edit_project_request_view_model.dart';
import 'package:proeye_api/model/req_receive_committee_vm.dart';
import 'package:proeye_api/model/req_team_vm.dart';
import 'package:proeye_api/model/req_update_task_vm.dart';
import 'package:proeye_api/model/self_or_other_enum.dart';
import 'package:proeye_api/model/signal_r_message_vm.dart';
import 'package:proeye_api/model/start_duration_dto.dart';
import 'package:proeye_api/model/stats_object.dart';
import 'package:proeye_api/model/string_data_wrapper_vm.dart';
import 'package:proeye_api/model/technical_report_abstract_vm.dart';
import 'package:proeye_api/model/technical_report_abstract_vm_paginated_response.dart';
import 'package:proeye_api/model/technical_report_vm.dart';
import 'package:proeye_api/model/token_api_model.dart';
import 'package:proeye_api/model/token_bag_view_model.dart';
import 'package:proeye_api/model/transaction_action_type_enum.dart';
import 'package:proeye_api/model/transaction_view_model.dart';
import 'package:proeye_api/model/user_view_model.dart';
import 'package:proeye_api/model/user_view_model_paginated_response.dart';
import 'package:proeye_api/model/warranty_stage_filter_enum.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AbstractGeneralActivityVM,
  AbstractGeneralSectionVM,
  AddClaimViewModel,
  AppFileViewModel,
  BooleanDataWrapperVM,
  CenterMainWorkVM,
  ChangeAnyPasswordViewModel,
  ChangePasswordViewModel,
  ClaimViewModel,
  ColoredDangerZoneVM,
  CommentVM,
  CommitteeTypeEnum,
  CompanyActivity,
  CompanySection,
  CompanyUserRelationTypesEnum,
  CompleteProjectDetailsVM,
  ConsultingCenterRoleEnum,
  ContactUsVM,
  DetailedGeneralActivityVM,
  DetailedGeneralSectionVM,
  EngManagementDirectorSimpleProjectDetailsViewModel,
  ExecutionCompanyViewModel,
  ExecutionCompanyViewModelDataWrapperVM,
  ExecutionCompanyViewModelPaginatedResponse,
  ExecutiveManagerSimpleProjectDetailsViewModel,
  ExtractTargetVM,
  GeneralPostVM,
  GovCompanyViewModel,
  GovCompanyViewModelDataWrapperVM,
  GovCompanyViewModelPaginatedResponse,
  GovsCitiesViewModelCity,
  GovsCitiesViewModelGov,
  Int32DataWrapperVM,
  IntroductionVM,
  ManagerVM,
  MessageViewModel,
  MessageViewModelPaginatedResponse,
  PerProjectUserRoleEnum,
  PerProjectUserRoleVM,
  ProjectAbstractCommitteeVM,
  ProjectAbstractTaskVM,
  ProjectAbstractViewModel,
  ProjectAbstractViewModelPaginatedResponse,
  ProjectChatParticipantVM,
  ProjectChatRoomAbstractVM,
  ProjectChatRoomVM,
  ProjectCommitteeVM,
  ProjectExtractAbstractVM,
  ProjectExtractAbstractVMPaginatedResponse,
  ProjectExtractVM,
  ProjectNameId,
  ProjectRequesterInfo,
  ProjectTaskVM,
  ProjectTeamVM,
  ReqChangeCommitteeTeam,
  ReqCommitteeVM,
  ReqCompleteTask,
  ReqCreateTaskVM,
  ReqEditProjectInfo,
  ReqExecutiveManagerCompleteProjectRequestViewModel,
  ReqExecutiveManagerEditProjectRequestViewModel,
  ReqReceiveCommitteeVM,
  ReqTeamVM,
  ReqUpdateTaskVM,
  SelfOrOtherEnum,
  SignalRMessageVM,
  StartDurationDto,
  StatsObject,
  StringDataWrapperVM,
  TechnicalReportAbstractVM,
  TechnicalReportAbstractVMPaginatedResponse,
  TechnicalReportVM,
  TokenApiModel,
  TokenBagViewModel,
  TransactionActionTypeEnum,
  TransactionViewModel,
  UserViewModel,
  UserViewModelPaginatedResponse,
  WarrantyStageFilterEnum,
])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AbstractGeneralActivityVM)]),
          () => new ListBuilder<AbstractGeneralActivityVM>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AbstractGeneralActivityVM)]),
          () => new MapBuilder<String, AbstractGeneralActivityVM>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AbstractGeneralSectionVM)]),
          () => new ListBuilder<AbstractGeneralSectionVM>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AbstractGeneralSectionVM)]),
          () => new MapBuilder<String, AbstractGeneralSectionVM>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AddClaimViewModel)]),
          () => new ListBuilder<AddClaimViewModel>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AddClaimViewModel)]),
          () => new MapBuilder<String, AddClaimViewModel>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AppFileViewModel)]),
          () => new ListBuilder<AppFileViewModel>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AppFileViewModel)]),
          () => new MapBuilder<String, AppFileViewModel>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(BooleanDataWrapperVM)]),
          () => new ListBuilder<BooleanDataWrapperVM>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(BooleanDataWrapperVM)]),
          () => new MapBuilder<String, BooleanDataWrapperVM>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CenterMainWorkVM)]),
          () => new ListBuilder<CenterMainWorkVM>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap,
              const [const FullType(String), const FullType(CenterMainWorkVM)]),
          () => new MapBuilder<String, CenterMainWorkVM>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ChangeAnyPasswordViewModel)]),
          () => new ListBuilder<ChangeAnyPasswordViewModel>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [const FullType(String), const FullType(ChangeAnyPasswordViewModel)]),
          () => new MapBuilder<String, ChangeAnyPasswordViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ChangePasswordViewModel)]), () => new ListBuilder<ChangePasswordViewModel>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ChangePasswordViewModel)]), () => new MapBuilder<String, ChangePasswordViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ClaimViewModel)]), () => new ListBuilder<ClaimViewModel>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ClaimViewModel)]), () => new MapBuilder<String, ClaimViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ColoredDangerZoneVM)]), () => new ListBuilder<ColoredDangerZoneVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ColoredDangerZoneVM)]), () => new MapBuilder<String, ColoredDangerZoneVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(CommentVM)]), () => new ListBuilder<CommentVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(CommentVM)]), () => new MapBuilder<String, CommentVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(CommitteeTypeEnum)]), () => new ListBuilder<CommitteeTypeEnum>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(CommitteeTypeEnum)]), () => new MapBuilder<String, CommitteeTypeEnum>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(CompanyActivity)]), () => new ListBuilder<CompanyActivity>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(CompanyActivity)]), () => new MapBuilder<String, CompanyActivity>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(CompanySection)]), () => new ListBuilder<CompanySection>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(CompanySection)]), () => new MapBuilder<String, CompanySection>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(CompanyUserRelationTypesEnum)]), () => new ListBuilder<CompanyUserRelationTypesEnum>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(CompanyUserRelationTypesEnum)]), () => new MapBuilder<String, CompanyUserRelationTypesEnum>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(CompleteProjectDetailsVM)]), () => new ListBuilder<CompleteProjectDetailsVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(CompleteProjectDetailsVM)]), () => new MapBuilder<String, CompleteProjectDetailsVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ConsultingCenterRoleEnum)]), () => new ListBuilder<ConsultingCenterRoleEnum>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ConsultingCenterRoleEnum)]), () => new MapBuilder<String, ConsultingCenterRoleEnum>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ContactUsVM)]), () => new ListBuilder<ContactUsVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ContactUsVM)]), () => new MapBuilder<String, ContactUsVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(DetailedGeneralActivityVM)]), () => new ListBuilder<DetailedGeneralActivityVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(DetailedGeneralActivityVM)]), () => new MapBuilder<String, DetailedGeneralActivityVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(DetailedGeneralSectionVM)]), () => new ListBuilder<DetailedGeneralSectionVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(DetailedGeneralSectionVM)]), () => new MapBuilder<String, DetailedGeneralSectionVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(EngManagementDirectorSimpleProjectDetailsViewModel)]), () => new ListBuilder<EngManagementDirectorSimpleProjectDetailsViewModel>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(EngManagementDirectorSimpleProjectDetailsViewModel)
          ]),
          () => new MapBuilder<String, EngManagementDirectorSimpleProjectDetailsViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ExecutionCompanyViewModel)]), () => new ListBuilder<ExecutionCompanyViewModel>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ExecutionCompanyViewModel)]), () => new MapBuilder<String, ExecutionCompanyViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ExecutionCompanyViewModelDataWrapperVM)]), () => new ListBuilder<ExecutionCompanyViewModelDataWrapperVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ExecutionCompanyViewModelDataWrapperVM)]), () => new MapBuilder<String, ExecutionCompanyViewModelDataWrapperVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ExecutionCompanyViewModelPaginatedResponse)]), () => new ListBuilder<ExecutionCompanyViewModelPaginatedResponse>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(ExecutionCompanyViewModelPaginatedResponse)
          ]),
          () => new MapBuilder<String, ExecutionCompanyViewModelPaginatedResponse>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ExecutiveManagerSimpleProjectDetailsViewModel)]), () => new ListBuilder<ExecutiveManagerSimpleProjectDetailsViewModel>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(ExecutiveManagerSimpleProjectDetailsViewModel)
          ]),
          () => new MapBuilder<String, ExecutiveManagerSimpleProjectDetailsViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ExtractTargetVM)]), () => new ListBuilder<ExtractTargetVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ExtractTargetVM)]), () => new MapBuilder<String, ExtractTargetVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(GeneralPostVM)]), () => new ListBuilder<GeneralPostVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(GeneralPostVM)]), () => new MapBuilder<String, GeneralPostVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(GovCompanyViewModel)]), () => new ListBuilder<GovCompanyViewModel>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(GovCompanyViewModel)]), () => new MapBuilder<String, GovCompanyViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(GovCompanyViewModelDataWrapperVM)]), () => new ListBuilder<GovCompanyViewModelDataWrapperVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(GovCompanyViewModelDataWrapperVM)]), () => new MapBuilder<String, GovCompanyViewModelDataWrapperVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(GovCompanyViewModelPaginatedResponse)]), () => new ListBuilder<GovCompanyViewModelPaginatedResponse>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(GovCompanyViewModelPaginatedResponse)]), () => new MapBuilder<String, GovCompanyViewModelPaginatedResponse>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(GovsCitiesViewModelCity)]), () => new ListBuilder<GovsCitiesViewModelCity>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(GovsCitiesViewModelCity)]), () => new MapBuilder<String, GovsCitiesViewModelCity>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(GovsCitiesViewModelGov)]), () => new ListBuilder<GovsCitiesViewModelGov>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(GovsCitiesViewModelGov)]), () => new MapBuilder<String, GovsCitiesViewModelGov>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(Int32DataWrapperVM)]), () => new ListBuilder<Int32DataWrapperVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(Int32DataWrapperVM)]), () => new MapBuilder<String, Int32DataWrapperVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(IntroductionVM)]), () => new ListBuilder<IntroductionVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(IntroductionVM)]), () => new MapBuilder<String, IntroductionVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ManagerVM)]), () => new ListBuilder<ManagerVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ManagerVM)]), () => new MapBuilder<String, ManagerVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(MessageViewModel)]), () => new ListBuilder<MessageViewModel>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(MessageViewModel)]), () => new MapBuilder<String, MessageViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(MessageViewModelPaginatedResponse)]), () => new ListBuilder<MessageViewModelPaginatedResponse>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(MessageViewModelPaginatedResponse)]), () => new MapBuilder<String, MessageViewModelPaginatedResponse>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(PerProjectUserRoleEnum)]), () => new ListBuilder<PerProjectUserRoleEnum>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(PerProjectUserRoleEnum)]), () => new MapBuilder<String, PerProjectUserRoleEnum>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(PerProjectUserRoleVM)]), () => new ListBuilder<PerProjectUserRoleVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(PerProjectUserRoleVM)]), () => new MapBuilder<String, PerProjectUserRoleVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectAbstractCommitteeVM)]), () => new ListBuilder<ProjectAbstractCommitteeVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectAbstractCommitteeVM)]), () => new MapBuilder<String, ProjectAbstractCommitteeVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectAbstractTaskVM)]), () => new ListBuilder<ProjectAbstractTaskVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectAbstractTaskVM)]), () => new MapBuilder<String, ProjectAbstractTaskVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectAbstractViewModel)]), () => new ListBuilder<ProjectAbstractViewModel>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectAbstractViewModel)]), () => new MapBuilder<String, ProjectAbstractViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectAbstractViewModelPaginatedResponse)]), () => new ListBuilder<ProjectAbstractViewModelPaginatedResponse>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(ProjectAbstractViewModelPaginatedResponse)
          ]),
          () => new MapBuilder<String, ProjectAbstractViewModelPaginatedResponse>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectChatParticipantVM)]), () => new ListBuilder<ProjectChatParticipantVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectChatParticipantVM)]), () => new MapBuilder<String, ProjectChatParticipantVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectChatRoomAbstractVM)]), () => new ListBuilder<ProjectChatRoomAbstractVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectChatRoomAbstractVM)]), () => new MapBuilder<String, ProjectChatRoomAbstractVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectChatRoomVM)]), () => new ListBuilder<ProjectChatRoomVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectChatRoomVM)]), () => new MapBuilder<String, ProjectChatRoomVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectCommitteeVM)]), () => new ListBuilder<ProjectCommitteeVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectCommitteeVM)]), () => new MapBuilder<String, ProjectCommitteeVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectExtractAbstractVM)]), () => new ListBuilder<ProjectExtractAbstractVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectExtractAbstractVM)]), () => new MapBuilder<String, ProjectExtractAbstractVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectExtractAbstractVMPaginatedResponse)]), () => new ListBuilder<ProjectExtractAbstractVMPaginatedResponse>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(ProjectExtractAbstractVMPaginatedResponse)
          ]),
          () => new MapBuilder<String, ProjectExtractAbstractVMPaginatedResponse>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectExtractVM)]), () => new ListBuilder<ProjectExtractVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectExtractVM)]), () => new MapBuilder<String, ProjectExtractVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectNameId)]), () => new ListBuilder<ProjectNameId>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectNameId)]), () => new MapBuilder<String, ProjectNameId>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectRequesterInfo)]), () => new ListBuilder<ProjectRequesterInfo>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectRequesterInfo)]), () => new MapBuilder<String, ProjectRequesterInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectTaskVM)]), () => new ListBuilder<ProjectTaskVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectTaskVM)]), () => new MapBuilder<String, ProjectTaskVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ProjectTeamVM)]), () => new ListBuilder<ProjectTeamVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ProjectTeamVM)]), () => new MapBuilder<String, ProjectTeamVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ReqChangeCommitteeTeam)]), () => new ListBuilder<ReqChangeCommitteeTeam>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ReqChangeCommitteeTeam)]), () => new MapBuilder<String, ReqChangeCommitteeTeam>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ReqCommitteeVM)]), () => new ListBuilder<ReqCommitteeVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ReqCommitteeVM)]), () => new MapBuilder<String, ReqCommitteeVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ReqCompleteTask)]), () => new ListBuilder<ReqCompleteTask>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ReqCompleteTask)]), () => new MapBuilder<String, ReqCompleteTask>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ReqCreateTaskVM)]), () => new ListBuilder<ReqCreateTaskVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ReqCreateTaskVM)]), () => new MapBuilder<String, ReqCreateTaskVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ReqEditProjectInfo)]), () => new ListBuilder<ReqEditProjectInfo>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ReqEditProjectInfo)]), () => new MapBuilder<String, ReqEditProjectInfo>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ReqExecutiveManagerCompleteProjectRequestViewModel)]), () => new ListBuilder<ReqExecutiveManagerCompleteProjectRequestViewModel>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(ReqExecutiveManagerCompleteProjectRequestViewModel)
          ]),
          () => new MapBuilder<String, ReqExecutiveManagerCompleteProjectRequestViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ReqExecutiveManagerEditProjectRequestViewModel)]), () => new ListBuilder<ReqExecutiveManagerEditProjectRequestViewModel>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(ReqExecutiveManagerEditProjectRequestViewModel)
          ]),
          () => new MapBuilder<String, ReqExecutiveManagerEditProjectRequestViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ReqReceiveCommitteeVM)]), () => new ListBuilder<ReqReceiveCommitteeVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ReqReceiveCommitteeVM)]), () => new MapBuilder<String, ReqReceiveCommitteeVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ReqTeamVM)]), () => new ListBuilder<ReqTeamVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ReqTeamVM)]), () => new MapBuilder<String, ReqTeamVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(ReqUpdateTaskVM)]), () => new ListBuilder<ReqUpdateTaskVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(ReqUpdateTaskVM)]), () => new MapBuilder<String, ReqUpdateTaskVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SelfOrOtherEnum)]), () => new ListBuilder<SelfOrOtherEnum>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(SelfOrOtherEnum)]), () => new MapBuilder<String, SelfOrOtherEnum>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(SignalRMessageVM)]), () => new ListBuilder<SignalRMessageVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(SignalRMessageVM)]), () => new MapBuilder<String, SignalRMessageVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(StartDurationDto)]), () => new ListBuilder<StartDurationDto>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(StartDurationDto)]), () => new MapBuilder<String, StartDurationDto>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(StatsObject)]), () => new ListBuilder<StatsObject>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(StatsObject)]), () => new MapBuilder<String, StatsObject>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(StringDataWrapperVM)]), () => new ListBuilder<StringDataWrapperVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(StringDataWrapperVM)]), () => new MapBuilder<String, StringDataWrapperVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TechnicalReportAbstractVM)]), () => new ListBuilder<TechnicalReportAbstractVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(TechnicalReportAbstractVM)]), () => new MapBuilder<String, TechnicalReportAbstractVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TechnicalReportAbstractVMPaginatedResponse)]), () => new ListBuilder<TechnicalReportAbstractVMPaginatedResponse>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(TechnicalReportAbstractVMPaginatedResponse)
          ]),
          () => new MapBuilder<String, TechnicalReportAbstractVMPaginatedResponse>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TechnicalReportVM)]), () => new ListBuilder<TechnicalReportVM>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(TechnicalReportVM)]), () => new MapBuilder<String, TechnicalReportVM>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TokenApiModel)]), () => new ListBuilder<TokenApiModel>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(TokenApiModel)]), () => new MapBuilder<String, TokenApiModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TokenBagViewModel)]), () => new ListBuilder<TokenBagViewModel>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(TokenBagViewModel)]), () => new MapBuilder<String, TokenBagViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TransactionActionTypeEnum)]), () => new ListBuilder<TransactionActionTypeEnum>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(TransactionActionTypeEnum)]), () => new MapBuilder<String, TransactionActionTypeEnum>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(TransactionViewModel)]), () => new ListBuilder<TransactionViewModel>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(TransactionViewModel)]), () => new MapBuilder<String, TransactionViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(UserViewModel)]), () => new ListBuilder<UserViewModel>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(UserViewModel)]), () => new MapBuilder<String, UserViewModel>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(UserViewModelPaginatedResponse)]), () => new ListBuilder<UserViewModelPaginatedResponse>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(UserViewModelPaginatedResponse)]), () => new MapBuilder<String, UserViewModelPaginatedResponse>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(WarrantyStageFilterEnum)]), () => new ListBuilder<WarrantyStageFilterEnum>())
      ..addBuilderFactory(const FullType(BuiltMap, const [const FullType(String), const FullType(WarrantyStageFilterEnum)]), () => new MapBuilder<String, WarrantyStageFilterEnum>())
      ..addBuilderFactory(const FullType(BuiltList, const [const FullType(String)]), () => new ListBuilder<String>())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
