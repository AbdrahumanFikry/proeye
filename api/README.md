# proeye_api
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1.0
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Requirements

Dart 1.20.0 or later OR Flutter 0.0.20 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: proeye_api
version: 2.0.0+3
description: ProEye Api Package
dependencies:
  proeye_api:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  proeye_api:
    path: /path/to/proeye_api
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:proeye_api/api.dart';


var api_instance = new AccountsApi();
var changePasswordViewModel = new ChangePasswordViewModel(); // ChangePasswordViewModel | 

try {
    api_instance.v10ApiAccountsChangePasswordPut(changePasswordViewModel);
} catch (e) {
    print("Exception when calling AccountsApi->v10ApiAccountsChangePasswordPut: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://proeye.azurewebsites.net*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AccountsApi* | [**v10ApiAccountsChangePasswordPut**](doc\/AccountsApi.md#v10apiaccountschangepasswordput) | **put** /v1.0/Api/Accounts/ChangePassword | Change current authorized password , login Required
*AccountsApi* | [**v10ApiAccountsGet**](doc\/AccountsApi.md#v10apiaccountsget) | **get** /v1.0/Api/Accounts | Get The Users ,, 
*AccountsApi* | [**v10ApiAccountsIdActivatePut**](doc\/AccountsApi.md#v10apiaccountsidactivateput) | **put** /v1.0/Api/Accounts/{id}/Activate | Activate user , Require system Admin
*AccountsApi* | [**v10ApiAccountsIdAddClaimPut**](doc\/AccountsApi.md#v10apiaccountsidaddclaimput) | **put** /v1.0/Api/Accounts/{id}/AddClaim | Add Claim, Require sys admin
*AccountsApi* | [**v10ApiAccountsIdChangeAnyPasswordPut**](doc\/AccountsApi.md#v10apiaccountsidchangeanypasswordput) | **put** /v1.0/Api/Accounts/{id}/ChangeAnyPassword | Change the password for any user by Id. , System Admin Required
*AccountsApi* | [**v10ApiAccountsIdCheckFirstLoginGet**](doc\/AccountsApi.md#v10apiaccountsidcheckfirstloginget) | **get** /v1.0/Api/Accounts/{id}/CheckFirstLogin | Get if it the first login , Anonymous usage
*AccountsApi* | [**v10ApiAccountsIdClaimsTypeDelete**](doc\/AccountsApi.md#v10apiaccountsidclaimstypedelete) | **delete** /v1.0/Api/Accounts/{id}/Claims/{type} | Remove a claim for a user, System Admin Required
*AccountsApi* | [**v10ApiAccountsIdDeactivateDelete**](doc\/AccountsApi.md#v10apiaccountsiddeactivatedelete) | **delete** /v1.0/Api/Accounts/{id}/Deactivate | deactivate a user, System Admin Required
*AccountsApi* | [**v10ApiAccountsIdGet**](doc\/AccountsApi.md#v10apiaccountsidget) | **get** /v1.0/Api/Accounts/{id} | Get The User by Id 
*AccountsApi* | [**v10ApiAccountsIdPut**](doc\/AccountsApi.md#v10apiaccountsidput) | **put** /v1.0/Api/Accounts/{id} | Update a user, System Admin Required
*AccountsApi* | [**v10ApiAccountsIdReturnFirstLoginPut**](doc\/AccountsApi.md#v10apiaccountsidreturnfirstloginput) | **put** /v1.0/Api/Accounts/{id}/ReturnFirstLogin | Return First Login , Admin usage 
*AccountsApi* | [**v10ApiAccountsIsAccessTokenValidGet**](doc\/AccountsApi.md#v10apiaccountsisaccesstokenvalidget) | **get** /v1.0/Api/Accounts/IsAccessTokenValid | 
*AccountsApi* | [**v10ApiAccountsLoginFirstTimePost**](doc\/AccountsApi.md#v10apiaccountsloginfirsttimepost) | **post** /v1.0/Api/Accounts/LoginFirstTime | Login First Time , Anonymous usage 
*AccountsApi* | [**v10ApiAccountsLoginPost**](doc\/AccountsApi.md#v10apiaccountsloginpost) | **post** /v1.0/Api/Accounts/Login | 
*AccountsApi* | [**v10ApiAccountsPost**](doc\/AccountsApi.md#v10apiaccountspost) | **post** /v1.0/Api/Accounts | Register a new user , Roles &#x3D;  \&quot;President|ExecutiveManager|EngManagementDirector|SystemAdmin|NormalUser|Developer\&quot; ,  Require a system admin
*AccountsApi* | [**v10ApiAccountsRefreshTokenPut**](doc\/AccountsApi.md#v10apiaccountsrefreshtokenput) | **put** /v1.0/Api/Accounts/RefreshToken | Refresh a  token
*AccountsApi* | [**v10ApiAccountsRevokeTokenDelete**](doc\/AccountsApi.md#v10apiaccountsrevoketokendelete) | **delete** /v1.0/Api/Accounts/RevokeToken | Revoke  a  token
*ChatApi* | [**v10ApiChatRoomProjectIdCreateOrUpdateChatRoomPut**](doc\/ChatApi.md#v10apichatroomprojectidcreateorupdatechatroomput) | **put** /v1.0/Api/ChatRoom/{projectId}/CreateOrUpdateChatRoom | Creates or updates a chat room
*ChatApi* | [**v10ApiChatRoomProjectIdGet**](doc\/ChatApi.md#v10apichatroomprojectidget) | **get** /v1.0/Api/ChatRoom/{projectId} | Get Project Chat
*ChatApi* | [**v10ApiChatRoomProjectIdRoomIdGet**](doc\/ChatApi.md#v10apichatroomprojectidroomidget) | **get** /v1.0/Api/ChatRoom/{projectId}/{roomId} | Get Project Chat
*ChatApi* | [**v10ApiChatRoomProjectIdRoomIdInviteParticipantPut**](doc\/ChatApi.md#v10apichatroomprojectidroomidinviteparticipantput) | **put** /v1.0/Api/ChatRoom/{projectId}/{roomId}/InviteParticipant | Invites a user to the group
*ChatApi* | [**v10ApiChatRoomProjectIdRoomIdKickParticipantTargetIdPut**](doc\/ChatApi.md#v10apichatroomprojectidroomidkickparticipanttargetidput) | **put** /v1.0/Api/ChatRoom/{projectId}/{roomId}/KickParticipant/{targetId} | Removes a user from the group
*ChatApi* | [**v10ApiChatRoomProjectIdRoomIdMessagesGet**](doc\/ChatApi.md#v10apichatroomprojectidroomidmessagesget) | **get** /v1.0/Api/ChatRoom/{projectId}/{roomId}/Messages | Get the messges of a project chat
*ChatApi* | [**v10ApiChatRoomProjectIdRoomIdMessagesMessageIdChangePinPut**](doc\/ChatApi.md#v10apichatroomprojectidroomidmessagesmessageidchangepinput) | **put** /v1.0/Api/ChatRoom/{projectId}/{roomId}/Messages/{messageId}/ChangePin | Pin a message,  not tested
*ChatApi* | [**v10ApiChatRoomProjectIdRoomIdMessagesSendMessagePost**](doc\/ChatApi.md#v10apichatroomprojectidroomidmessagessendmessagepost) | **post** /v1.0/Api/ChatRoom/{projectId}/{roomId}/Messages/SendMessage | Send a message to a project,  not tested
*ChatApi* | [**v10ApiSignalRModelGet**](doc\/ChatApi.md#v10apisignalrmodelget) | **get** /v1.0/Api/SignalRModel | 
*CitiesApi* | [**v10ApiGovsGet**](doc\/CitiesApi.md#v10apigovsget) | **get** /v1.0/Api/Govs | Get Governorates, Anonymous Usage
*CitiesApi* | [**v10ApiGovsIdCitiesGet**](doc\/CitiesApi.md#v10apigovsidcitiesget) | **get** /v1.0/Api/Govs/{id}/Cities | Get Cities, Anonymous Usage
*CitiesApi* | [**v10ApiGovsSeedCitiesFromLocalCsvPut**](doc\/CitiesApi.md#v10apigovsseedcitiesfromlocalcsvput) | **put** /v1.0/Api/Govs/SeedCitiesFromLocalCsv | Seed Cities From Local Csv ,, system admin Required
*CommitteeLeaderApi* | [**v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdAddTaskPost**](doc\/CommitteeLeaderApi.md#v10apicommitteeleaderprojectidcommitteeidteamidaddtaskpost) | **post** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/AddTask | 
*CommitteeLeaderApi* | [**v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdCompleteTaskPut**](doc\/CommitteeLeaderApi.md#v10apicommitteeleaderprojectidcommitteeidteamidtaskidcompletetaskput) | **put** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/{taskId}/CompleteTask | 
*CommitteeLeaderApi* | [**v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdDeleteTaskDelete**](doc\/CommitteeLeaderApi.md#v10apicommitteeleaderprojectidcommitteeidteamidtaskiddeletetaskdelete) | **delete** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/{taskId}/DeleteTask | 
*CommitteeLeaderApi* | [**v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdUpdateTaskPut**](doc\/CommitteeLeaderApi.md#v10apicommitteeleaderprojectidcommitteeidteamidtaskidupdatetaskput) | **put** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/{taskId}/UpdateTask | 
*CommitteeLeaderApi* | [**v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdUpdateMembersPost**](doc\/CommitteeLeaderApi.md#v10apicommitteeleaderprojectidcommitteeidteamidupdatememberspost) | **post** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/UpdateMembers | 
*CommitteeLeaderApi* | [**v10ApiCommitteeLeaderProjectIdCommitteeIdUpdateTeamsPost**](doc\/CommitteeLeaderApi.md#v10apicommitteeleaderprojectidcommitteeidupdateteamspost) | **post** /v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/UpdateTeams | 
*CompaniesApi* | [**activitiesGet**](doc\/CompaniesApi.md#activitiesget) | **get** /Activities | Get Activities ,, Anonymous Usage
*CompaniesApi* | [**activitiesIdActivatePut**](doc\/CompaniesApi.md#activitiesidactivateput) | **put** /Activities/{id}/Activate | Activate a deleted Activity,, Sys Admin Require
*CompaniesApi* | [**activitiesIdDelete**](doc\/CompaniesApi.md#activitiesiddelete) | **delete** /Activities/{id} | Delete Activities ,, Sys Admin Require
*CompaniesApi* | [**activitiesIdPut**](doc\/CompaniesApi.md#activitiesidput) | **put** /Activities/{id} | Update Activity ,, SysAdminRequire
*CompaniesApi* | [**activitiesPost**](doc\/CompaniesApi.md#activitiespost) | **post** /Activities | Create an activity,,  Require System Admin
*CompaniesApi* | [**sectionsGet**](doc\/CompaniesApi.md#sectionsget) | **get** /Sections | Get sections ,, Anonymous Usage
*CompaniesApi* | [**sectionsIdActivatePut**](doc\/CompaniesApi.md#sectionsidactivateput) | **put** /Sections/{id}/Activate | Activate a deleted section,, Sys Admin Require
*CompaniesApi* | [**sectionsIdDelete**](doc\/CompaniesApi.md#sectionsiddelete) | **delete** /Sections/{id} | Delete Sections ,, Anonymous Usage
*CompaniesApi* | [**sectionsIdPut**](doc\/CompaniesApi.md#sectionsidput) | **put** /Sections/{id} | Update Section ,, Anonymous Usage
*CompaniesApi* | [**sectionsPost**](doc\/CompaniesApi.md#sectionspost) | **post** /Sections | Create a section,,  Require System Admin
*CompaniesApi* | [**v10ApiCompaniesExecutionGet**](doc\/CompaniesApi.md#v10apicompaniesexecutionget) | **get** /v1.0/Api/Companies/Execution | Get Execution Companies
*CompaniesApi* | [**v10ApiCompaniesExecutionPost**](doc\/CompaniesApi.md#v10apicompaniesexecutionpost) | **post** /v1.0/Api/Companies/Execution | Create Execution Company, Anonymous Usage
*CompaniesApi* | [**v10ApiCompaniesExecutionsCompanyIdGet**](doc\/CompaniesApi.md#v10apicompaniesexecutionscompanyidget) | **get** /v1.0/Api/Companies/Executions/{companyId} | Get Single Execution Company
*CompaniesApi* | [**v10ApiCompaniesGovPost**](doc\/CompaniesApi.md#v10apicompaniesgovpost) | **post** /v1.0/Api/Companies/Gov | Create Government Company , Anonymous Usage
*CompaniesApi* | [**v10ApiCompaniesGovsCompanyIdGet**](doc\/CompaniesApi.md#v10apicompaniesgovscompanyidget) | **get** /v1.0/Api/Companies/Govs/{companyId} | Get Single Gov Company
*CompaniesApi* | [**v10ApiCompaniesGovsGet**](doc\/CompaniesApi.md#v10apicompaniesgovsget) | **get** /v1.0/Api/Companies/Govs | Get Gov Companies
*CompaniesApi* | [**v10ApiCompaniesIdDelete**](doc\/CompaniesApi.md#v10apicompaniesiddelete) | **delete** /v1.0/Api/Companies/{id} | Delete a Company , System Admin Usage
*CompaniesApi* | [**v10ApiCompaniesIdVerifyPut**](doc\/CompaniesApi.md#v10apicompaniesidverifyput) | **put** /v1.0/Api/Companies/{id}/Verify | Verify  Company , System Admin Usage
*CompaniesApi* | [**v10ApiImportGovCompaniesPut**](doc\/CompaniesApi.md#v10apiimportgovcompaniesput) | **put** /v1.0/Api/ImportGovCompanies | Import gov companies , System Admin Usage
*EngManagementDirectorApi* | [**v10ApiEngManagementDirectorProjectsIdAcceptRequestPost**](doc\/EngManagementDirectorApi.md#v10apiengmanagementdirectorprojectsidacceptrequestpost) | **post** /v1.0/Api/EngManagementDirector/Projects/{id}/AcceptRequest | Confirm Project Request for Eng Management Director 
*EngManagementDirectorApi* | [**v10ApiEngManagementDirectorProjectsIdEditRequestPost**](doc\/EngManagementDirectorApi.md#v10apiengmanagementdirectorprojectsideditrequestpost) | **post** /v1.0/Api/EngManagementDirector/Projects/{id}/EditRequest | Edit Project Request for Eng Management Director 
*EngManagementDirectorApi* | [**v10ApiEngManagementDirectorProjectsIdRejectRequestPost**](doc\/EngManagementDirectorApi.md#v10apiengmanagementdirectorprojectsidrejectrequestpost) | **post** /v1.0/Api/EngManagementDirector/Projects/{id}/RejectRequest | Reject Project Request for Eng Management Director 
*EngManagementDirectorApi* | [**v10ApiEngManagementDirectorProjectsIdSpecifySupervisionStatusPost**](doc\/EngManagementDirectorApi.md#v10apiengmanagementdirectorprojectsidspecifysupervisionstatuspost) | **post** /v1.0/Api/EngManagementDirector/Projects/{id}/SpecifySupervisionStatus | Specify if Eng Management Director is a supervisor
*EngManagementDirectorApi* | [**v10ApiEngManagementDirectorProjectsRequestsGet**](doc\/EngManagementDirectorApi.md#v10apiengmanagementdirectorprojectsrequestsget) | **get** /v1.0/Api/EngManagementDirector/Projects/Requests | get projects request
*EngManagementDirectorApi* | [**v10ApiEngManagementDirectorProjectsRequestsIdGet**](doc\/EngManagementDirectorApi.md#v10apiengmanagementdirectorprojectsrequestsidget) | **get** /v1.0/Api/EngManagementDirector/Projects/Requests/{id} | get project request
*ExecutiveManagerApi* | [**v10ApiExecutionManagerProjectsIdCompleteRequestPost**](doc\/ExecutiveManagerApi.md#v10apiexecutionmanagerprojectsidcompleterequestpost) | **post** /v1.0/Api/ExecutionManager/Projects/{id}/CompleteRequest | Complete a project requests for Execution manager
*ExecutiveManagerApi* | [**v10ApiExecutionManagerProjectsIdCreateOrUpdateReceiveCommitteePost**](doc\/ExecutiveManagerApi.md#v10apiexecutionmanagerprojectsidcreateorupdatereceivecommitteepost) | **post** /v1.0/Api/ExecutionManager/Projects/{id}/CreateOrUpdateReceiveCommittee | Creates or updates receive committee for Execution manager
*ExecutiveManagerApi* | [**v10ApiExecutionManagerProjectsIdEditInfoPost**](doc\/ExecutiveManagerApi.md#v10apiexecutionmanagerprojectsideditinfopost) | **post** /v1.0/Api/ExecutionManager/Projects/{id}/EditInfo | Edit project info for ExecutiveManager
*ExecutiveManagerApi* | [**v10ApiExecutionManagerProjectsIdGeneralEditProjectPost**](doc\/ExecutiveManagerApi.md#v10apiexecutionmanagerprojectsidgeneraleditprojectpost) | **post** /v1.0/Api/ExecutionManager/Projects/{id}/GeneralEditProject | Edit project info, for devs only
*ExecutiveManagerApi* | [**v10ApiExecutionManagerProjectsRequestsGet**](doc\/ExecutiveManagerApi.md#v10apiexecutionmanagerprojectsrequestsget) | **get** /v1.0/Api/ExecutionManager/Projects/Requests | Get project requests for Execution manager
*ExecutiveManagerApi* | [**v10ApiExecutionManagerProjectsRequestsIdGet**](doc\/ExecutiveManagerApi.md#v10apiexecutionmanagerprojectsrequestsidget) | **get** /v1.0/Api/ExecutionManager/Projects/Requests/{id} | Get single project request for Execution manager
*ExtractsApi* | [**v10ApiProjectsIdExtractsCreateExtractPost**](doc\/ExtractsApi.md#v10apiprojectsidextractscreateextractpost) | **post** /v1.0/Api/Projects/{id}/Extracts/CreateExtract | 
*ExtractsApi* | [**v10ApiProjectsIdExtractsExtractIdGet**](doc\/ExtractsApi.md#v10apiprojectsidextractsextractidget) | **get** /v1.0/Api/Projects/{id}/Extracts/{extractId} | 
*ExtractsApi* | [**v10ApiProjectsIdExtractsExtractIdReviewPost**](doc\/ExtractsApi.md#v10apiprojectsidextractsextractidreviewpost) | **post** /v1.0/Api/Projects/{id}/Extracts/{extractId}/Review | 
*ExtractsApi* | [**v10ApiProjectsIdExtractsGet**](doc\/ExtractsApi.md#v10apiprojectsidextractsget) | **get** /v1.0/Api/Projects/{id}/Extracts | 
*FcmApi* | [**v10ApiFCMAssignTokenPost**](doc\/FcmApi.md#v10apifcmassigntokenpost) | **post** /v1.0/Api/FCM/AssignToken | 
*FcmApi* | [**v10ApiFCMListTokensGet**](doc\/FcmApi.md#v10apifcmlisttokensget) | **get** /v1.0/Api/FCM/ListTokens | 
*FcmApi* | [**v10ApiFCMRemoveAllTokensDelete**](doc\/FcmApi.md#v10apifcmremovealltokensdelete) | **delete** /v1.0/Api/FCM/RemoveAllTokens | 
*FcmApi* | [**v10ApiFCMRemoveTokenDelete**](doc\/FcmApi.md#v10apifcmremovetokendelete) | **delete** /v1.0/Api/FCM/RemoveToken | 
*FilesApi* | [**v10ApiFilesPost**](doc\/FilesApi.md#v10apifilespost) | **post** /v1.0/Api/Files | 
*ProjectApi* | [**v10ApiProjectsDeleteAllDelete**](doc\/ProjectApi.md#v10apiprojectsdeletealldelete) | **delete** /v1.0/Api/Projects/DeleteAll | 
*ProjectApi* | [**v10ApiProjectsGet**](doc\/ProjectApi.md#v10apiprojectsget) | **get** /v1.0/Api/Projects | 
*ProjectApi* | [**v10ApiProjectsIdCommitteeCommitteeIdGet**](doc\/ProjectApi.md#v10apiprojectsidcommitteecommitteeidget) | **get** /v1.0/Api/Projects/{id}/Committee/{committeeId} | 
*ProjectApi* | [**v10ApiProjectsIdCommitteeCommitteeIdTeamIdTaskIdGet**](doc\/ProjectApi.md#v10apiprojectsidcommitteecommitteeidteamidtaskidget) | **get** /v1.0/Api/Projects/{id}/Committee/{committeeId}/{teamId}/{taskId} | 
*ProjectApi* | [**v10ApiProjectsIdCommitteeIdTeamIdTaskIdAddCommentPost**](doc\/ProjectApi.md#v10apiprojectsidcommitteeidteamidtaskidaddcommentpost) | **post** /v1.0/Api/Projects/{id}/{committeeId}/{teamId}/{taskId}/AddComment | 
*ProjectApi* | [**v10ApiProjectsIdGet**](doc\/ProjectApi.md#v10apiprojectsidget) | **get** /v1.0/Api/Projects/{id} | 
*ProjectApi* | [**v10ApiProjectsIdTransactionsGet**](doc\/ProjectApi.md#v10apiprojectsidtransactionsget) | **get** /v1.0/Api/Projects/{id}/Transactions | 
*ProjectApi* | [**v10ApiProjectsV1Post**](doc\/ProjectApi.md#v10apiprojectsv1post) | **post** /v1.0/Api/Projects/V1 | 
*PublicPageApi* | [**v10ApiPublicPageActivitiesActivityIdCreateOrUpdateSectionPost**](doc\/PublicPageApi.md#v10apipublicpageactivitiesactivityidcreateorupdatesectionpost) | **post** /v1.0/Api/PublicPage/Activities/{activityId}/CreateOrUpdateSection | 
*PublicPageApi* | [**v10ApiPublicPageActivitiesActivityIdDeleteActivityDelete**](doc\/PublicPageApi.md#v10apipublicpageactivitiesactivityiddeleteactivitydelete) | **delete** /v1.0/Api/PublicPage/Activities/{activityId}/DeleteActivity | 
*PublicPageApi* | [**v10ApiPublicPageActivitiesActivityIdGet**](doc\/PublicPageApi.md#v10apipublicpageactivitiesactivityidget) | **get** /v1.0/Api/PublicPage/Activities/{activityId} | 
*PublicPageApi* | [**v10ApiPublicPageActivitiesActivityIdSectionIdCreateOrUpdatePostPost**](doc\/PublicPageApi.md#v10apipublicpageactivitiesactivityidsectionidcreateorupdatepostpost) | **post** /v1.0/Api/PublicPage/Activities/{activityId}/{sectionId}/CreateOrUpdatePost | 
*PublicPageApi* | [**v10ApiPublicPageActivitiesActivityIdSectionIdGet**](doc\/PublicPageApi.md#v10apipublicpageactivitiesactivityidsectionidget) | **get** /v1.0/Api/PublicPage/Activities/{activityId}/{sectionId} | 
*PublicPageApi* | [**v10ApiPublicPageActivitiesCreateOrUpdateActivityPost**](doc\/PublicPageApi.md#v10apipublicpageactivitiescreateorupdateactivitypost) | **post** /v1.0/Api/PublicPage/Activities/CreateOrUpdateActivity | 
*PublicPageApi* | [**v10ApiPublicPageActivitiesGet**](doc\/PublicPageApi.md#v10apipublicpageactivitiesget) | **get** /v1.0/Api/PublicPage/Activities | 
*PublicPageApi* | [**v10ApiPublicPageGetContactUsGet**](doc\/PublicPageApi.md#v10apipublicpagegetcontactusget) | **get** /v1.0/Api/PublicPage/GetContactUs | 
*PublicPageApi* | [**v10ApiPublicPageGetIntroductionGet**](doc\/PublicPageApi.md#v10apipublicpagegetintroductionget) | **get** /v1.0/Api/PublicPage/GetIntroduction | 
*PublicPageApi* | [**v10ApiPublicPageGetMainWorksGet**](doc\/PublicPageApi.md#v10apipublicpagegetmainworksget) | **get** /v1.0/Api/PublicPage/GetMainWorks | 
*PublicPageApi* | [**v10ApiPublicPageGetManagersGet**](doc\/PublicPageApi.md#v10apipublicpagegetmanagersget) | **get** /v1.0/Api/PublicPage/GetManagers | 
*PublicPageApi* | [**v10ApiPublicPagePostIdDeletePostDelete**](doc\/PublicPageApi.md#v10apipublicpagepostiddeletepostdelete) | **delete** /v1.0/Api/PublicPage/{postId}/DeletePost | 
*PublicPageApi* | [**v10ApiPublicPageSectionIdDeleteSectionDelete**](doc\/PublicPageApi.md#v10apipublicpagesectioniddeletesectiondelete) | **delete** /v1.0/Api/PublicPage/{sectionId}/DeleteSection | 
*PublicPageApi* | [**v10ApiPublicPageSetContactUsPut**](doc\/PublicPageApi.md#v10apipublicpagesetcontactusput) | **put** /v1.0/Api/PublicPage/SetContactUs | 
*PublicPageApi* | [**v10ApiPublicPageSetIntroductionPut**](doc\/PublicPageApi.md#v10apipublicpagesetintroductionput) | **put** /v1.0/Api/PublicPage/SetIntroduction | 
*PublicPageApi* | [**v10ApiPublicPageSetMainWorksPut**](doc\/PublicPageApi.md#v10apipublicpagesetmainworksput) | **put** /v1.0/Api/PublicPage/SetMainWorks | 
*PublicPageApi* | [**v10ApiPublicPageSetManagersPut**](doc\/PublicPageApi.md#v10apipublicpagesetmanagersput) | **put** /v1.0/Api/PublicPage/SetManagers | 
*StatsApi* | [**v10ApiGetProjectsStatsGet**](doc\/StatsApi.md#v10apigetprojectsstatsget) | **get** /v1.0/Api/GetProjectsStats | 
*TechnicalReportsApi* | [**v10ApiProjectsIdTechnicalReportsCreateReportPost**](doc\/TechnicalReportsApi.md#v10apiprojectsidtechnicalreportscreatereportpost) | **post** /v1.0/Api/Projects/{id}/TechnicalReports/CreateReport | 
*TechnicalReportsApi* | [**v10ApiProjectsIdTechnicalReportsGet**](doc\/TechnicalReportsApi.md#v10apiprojectsidtechnicalreportsget) | **get** /v1.0/Api/Projects/{id}/TechnicalReports | 
*TechnicalReportsApi* | [**v10ApiProjectsIdTechnicalReportsReportIdGet**](doc\/TechnicalReportsApi.md#v10apiprojectsidtechnicalreportsreportidget) | **get** /v1.0/Api/Projects/{id}/TechnicalReports/{reportId} | 


## Documentation For Models

 - [AbstractGeneralActivityVM](doc\/AbstractGeneralActivityVM.md)
 - [AbstractGeneralSectionVM](doc\/AbstractGeneralSectionVM.md)
 - [AddClaimViewModel](doc\/AddClaimViewModel.md)
 - [AppFileViewModel](doc\/AppFileViewModel.md)
 - [BooleanDataWrapperVM](doc\/BooleanDataWrapperVM.md)
 - [CenterMainWorkVM](doc\/CenterMainWorkVM.md)
 - [ChangeAnyPasswordViewModel](doc\/ChangeAnyPasswordViewModel.md)
 - [ChangePasswordViewModel](doc\/ChangePasswordViewModel.md)
 - [ClaimViewModel](doc\/ClaimViewModel.md)
 - [ColoredDangerZoneVM](doc\/ColoredDangerZoneVM.md)
 - [CommentVM](doc\/CommentVM.md)
 - [CommitteeTypeEnum](doc\/CommitteeTypeEnum.md)
 - [CompanyActivity](doc\/CompanyActivity.md)
 - [CompanySection](doc\/CompanySection.md)
 - [CompanyUserRelationTypesEnum](doc\/CompanyUserRelationTypesEnum.md)
 - [CompleteProjectDetailsVM](doc\/CompleteProjectDetailsVM.md)
 - [ConsultingCenterRoleEnum](doc\/ConsultingCenterRoleEnum.md)
 - [ContactUsVM](doc\/ContactUsVM.md)
 - [DetailedGeneralActivityVM](doc\/DetailedGeneralActivityVM.md)
 - [DetailedGeneralSectionVM](doc\/DetailedGeneralSectionVM.md)
 - [EngManagementDirectorSimpleProjectDetailsViewModel](doc\/EngManagementDirectorSimpleProjectDetailsViewModel.md)
 - [ExecutionCompanyViewModel](doc\/ExecutionCompanyViewModel.md)
 - [ExecutionCompanyViewModelDataWrapperVM](doc\/ExecutionCompanyViewModelDataWrapperVM.md)
 - [ExecutionCompanyViewModelPaginatedResponse](doc\/ExecutionCompanyViewModelPaginatedResponse.md)
 - [ExecutiveManagerSimpleProjectDetailsViewModel](doc\/ExecutiveManagerSimpleProjectDetailsViewModel.md)
 - [ExtractTargetVM](doc\/ExtractTargetVM.md)
 - [GeneralPostVM](doc\/GeneralPostVM.md)
 - [GovCompanyViewModel](doc\/GovCompanyViewModel.md)
 - [GovCompanyViewModelDataWrapperVM](doc\/GovCompanyViewModelDataWrapperVM.md)
 - [GovCompanyViewModelPaginatedResponse](doc\/GovCompanyViewModelPaginatedResponse.md)
 - [GovsCitiesViewModelCity](doc\/GovsCitiesViewModelCity.md)
 - [GovsCitiesViewModelGov](doc\/GovsCitiesViewModelGov.md)
 - [Int32DataWrapperVM](doc\/Int32DataWrapperVM.md)
 - [IntroductionVM](doc\/IntroductionVM.md)
 - [ManagerVM](doc\/ManagerVM.md)
 - [MessageViewModel](doc\/MessageViewModel.md)
 - [MessageViewModelPaginatedResponse](doc\/MessageViewModelPaginatedResponse.md)
 - [PerProjectUserRoleEnum](doc\/PerProjectUserRoleEnum.md)
 - [PerProjectUserRoleVM](doc\/PerProjectUserRoleVM.md)
 - [ProjectAbstractCommitteeVM](doc\/ProjectAbstractCommitteeVM.md)
 - [ProjectAbstractTaskVM](doc\/ProjectAbstractTaskVM.md)
 - [ProjectAbstractViewModel](doc\/ProjectAbstractViewModel.md)
 - [ProjectAbstractViewModelPaginatedResponse](doc\/ProjectAbstractViewModelPaginatedResponse.md)
 - [ProjectChatParticipantVM](doc\/ProjectChatParticipantVM.md)
 - [ProjectChatRoomAbstractVM](doc\/ProjectChatRoomAbstractVM.md)
 - [ProjectChatRoomVM](doc\/ProjectChatRoomVM.md)
 - [ProjectCommitteeVM](doc\/ProjectCommitteeVM.md)
 - [ProjectExtractAbstractVM](doc\/ProjectExtractAbstractVM.md)
 - [ProjectExtractAbstractVMPaginatedResponse](doc\/ProjectExtractAbstractVMPaginatedResponse.md)
 - [ProjectExtractVM](doc\/ProjectExtractVM.md)
 - [ProjectNameId](doc\/ProjectNameId.md)
 - [ProjectRequesterInfo](doc\/ProjectRequesterInfo.md)
 - [ProjectTaskVM](doc\/ProjectTaskVM.md)
 - [ProjectTeamVM](doc\/ProjectTeamVM.md)
 - [ReqChangeCommitteeTeam](doc\/ReqChangeCommitteeTeam.md)
 - [ReqCommitteeVM](doc\/ReqCommitteeVM.md)
 - [ReqCompleteTask](doc\/ReqCompleteTask.md)
 - [ReqCreateTaskVM](doc\/ReqCreateTaskVM.md)
 - [ReqEditProjectInfo](doc\/ReqEditProjectInfo.md)
 - [ReqExecutiveManagerCompleteProjectRequestViewModel](doc\/ReqExecutiveManagerCompleteProjectRequestViewModel.md)
 - [ReqExecutiveManagerEditProjectRequestViewModel](doc\/ReqExecutiveManagerEditProjectRequestViewModel.md)
 - [ReqReceiveCommitteeVM](doc\/ReqReceiveCommitteeVM.md)
 - [ReqTeamVM](doc\/ReqTeamVM.md)
 - [ReqUpdateTaskVM](doc\/ReqUpdateTaskVM.md)
 - [SelfOrOtherEnum](doc\/SelfOrOtherEnum.md)
 - [SignalRMessageVM](doc\/SignalRMessageVM.md)
 - [StartDurationDto](doc\/StartDurationDto.md)
 - [StatsObject](doc\/StatsObject.md)
 - [StringDataWrapperVM](doc\/StringDataWrapperVM.md)
 - [TechnicalReportAbstractVM](doc\/TechnicalReportAbstractVM.md)
 - [TechnicalReportAbstractVMPaginatedResponse](doc\/TechnicalReportAbstractVMPaginatedResponse.md)
 - [TechnicalReportVM](doc\/TechnicalReportVM.md)
 - [TokenApiModel](doc\/TokenApiModel.md)
 - [TokenBagViewModel](doc\/TokenBagViewModel.md)
 - [TransactionActionTypeEnum](doc\/TransactionActionTypeEnum.md)
 - [TransactionViewModel](doc\/TransactionViewModel.md)
 - [UserViewModel](doc\/UserViewModel.md)
 - [UserViewModelPaginatedResponse](doc\/UserViewModelPaginatedResponse.md)
 - [WarrantyStageFilterEnum](doc\/WarrantyStageFilterEnum.md)


## Documentation For Authorization


## Bearer

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author




