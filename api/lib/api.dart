library proeye_api.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:proeye_api/serializers.dart';
import 'package:proeye_api/auth/api_key_auth.dart';
import 'package:proeye_api/auth/basic_auth.dart';
import 'package:proeye_api/auth/oauth.dart';
import 'package:proeye_api/api/accounts_api.dart';
import 'package:proeye_api/api/chat_api.dart';
import 'package:proeye_api/api/cities_api.dart';
import 'package:proeye_api/api/committee_leader_api.dart';
import 'package:proeye_api/api/companies_api.dart';
import 'package:proeye_api/api/eng_management_director_api.dart';
import 'package:proeye_api/api/executive_manager_api.dart';
import 'package:proeye_api/api/extracts_api.dart';
import 'package:proeye_api/api/fcm_api.dart';
import 'package:proeye_api/api/files_api.dart';
import 'package:proeye_api/api/project_api.dart';
import 'package:proeye_api/api/public_page_api.dart';
import 'package:proeye_api/api/stats_api.dart';
import 'package:proeye_api/api/technical_reports_api.dart';

final _defaultInterceptors = [
  OAuthInterceptor(),
  BasicAuthInterceptor(),
  ApiKeyAuthInterceptor()
];

class ProeyeApi {
  Dio dio;
  Serializers serializers;
  String basePath = 'https://proeye.azurewebsites.net';
  bool fileNamesHaveBrackets;

  ProeyeApi(
      {this.dio,
      Serializers serializers,
      String basePathOverride,
      int connectTimeoutOverride,
      int receiveTimeoutOverride,
      List<Interceptor> interceptors,
      bool fileNamesHaveBrackets = true}) {
    if (dio == null) {
      BaseOptions options = new BaseOptions(
        baseUrl: basePathOverride ?? basePath,
        connectTimeout: connectTimeoutOverride ?? 5000,
        receiveTimeout: receiveTimeoutOverride ?? 3000,
      );
      this.dio = new Dio(options);
    }

    if (interceptors == null) {
      this.dio.interceptors.addAll(_defaultInterceptors);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }

    this.serializers = serializers ?? standardSerializers;
    this.fileNamesHaveBrackets = fileNamesHaveBrackets;
  }

  void setOAuthToken(String name, String token) {
    (this.dio.interceptors.firstWhere((element) => element is OAuthInterceptor,
            orElse: null) as OAuthInterceptor)
        ?.tokens[name] = token;
  }

  void setBasicAuth(String name, String username, String password) {
    (this.dio.interceptors.firstWhere(
            (element) => element is BasicAuthInterceptor,
            orElse: null) as BasicAuthInterceptor)
        ?.authInfo[name] = BasicAuthInfo(username, password);
  }

  void setApiKey(String name, String apiKey) {
    (this.dio.interceptors.firstWhere(
            (element) => element is ApiKeyAuthInterceptor,
            orElse: null) as ApiKeyAuthInterceptor)
        ?.apiKeys[name] = apiKey;
  }

  /**
    * Get AccountsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  AccountsApi getAccountsApi() {
    return AccountsApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get ChatApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ChatApi getChatApi() {
    return ChatApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get CitiesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CitiesApi getCitiesApi() {
    return CitiesApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get CommitteeLeaderApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CommitteeLeaderApi getCommitteeLeaderApi() {
    return CommitteeLeaderApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get CompaniesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  CompaniesApi getCompaniesApi() {
    return CompaniesApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get EngManagementDirectorApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  EngManagementDirectorApi getEngManagementDirectorApi() {
    return EngManagementDirectorApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get ExecutiveManagerApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ExecutiveManagerApi getExecutiveManagerApi() {
    return ExecutiveManagerApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get ExtractsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ExtractsApi getExtractsApi() {
    return ExtractsApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get FcmApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  FcmApi getFcmApi() {
    return FcmApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get FilesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  FilesApi getFilesApi() {
    return FilesApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get ProjectApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ProjectApi getProjectApi() {
    return ProjectApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get PublicPageApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  PublicPageApi getPublicPageApi() {
    return PublicPageApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get StatsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  StatsApi getStatsApi() {
    return StatsApi(dio, serializers, fileNamesHaveBrackets);
  }

  /**
    * Get TechnicalReportsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  TechnicalReportsApi getTechnicalReportsApi() {
    return TechnicalReportsApi(dio, serializers, fileNamesHaveBrackets);
  }
}
