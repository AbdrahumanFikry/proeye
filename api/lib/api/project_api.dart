import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:proeye_api/model/project_committee_vm.dart';
import 'package:proeye_api/model/warranty_stage_filter_enum.dart';
import 'package:proeye_api/model/company_user_relation_types_enum.dart';
import 'package:proeye_api/model/project_task_vm.dart';
import 'package:proeye_api/model/complete_project_details_vm.dart';
import 'package:proeye_api/model/transaction_view_model.dart';
import 'package:proeye_api/model/string_data_wrapper_vm.dart';
import 'package:proeye_api/model/project_abstract_view_model_paginated_response.dart';
import 'package:proeye_api/api_util.dart';
import 'package:built_collection/built_collection.dart';

class ProjectApi {
  final Dio _dio;
  Serializers _serializers;
  bool _fileNamesHaveBrackets;
  String get _appended => _fileNamesHaveBrackets ? '[]' : '';
  ProjectApi(this._dio, this._serializers, this._fileNamesHaveBrackets);

  ///
  ///
  ///
  Future<Response<void>> v10ApiProjectsDeleteAllDelete({
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Projects/DeleteAll';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [];

    return _dio.request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'delete'.toUpperCase(),
        headers: headerParams,
        extra: {
          'secure': [
            {
              'type': 'apiKey',
              'name': 'Bearer',
              'keyName': 'Authorization',
              'where': 'header',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType:
            contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  ///
  ///
  ///
  Future<Response<ProjectAbstractViewModelPaginatedResponse>>
      v10ApiProjectsGet({
    String filterStr,
    bool isDone,
    int pageIndex,
    int pageSize,
    bool deniedOnly,
    WarrantyStageFilterEnum warrantyStage,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Projects';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'filterStr'] = filterStr;
    queryParams[r'isDone'] = isDone;
    queryParams[r'pageIndex'] = pageIndex;
    queryParams[r'pageSize'] = pageSize;
    queryParams[r'deniedOnly'] = deniedOnly;
    queryParams[r'warrantyStage'] = warrantyStage;
    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [];

    return _dio
        .request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: {
          'secure': [
            {
              'type': 'apiKey',
              'name': 'Bearer',
              'keyName': 'Authorization',
              'where': 'header',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType:
            contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers
          .serializerForType(ProjectAbstractViewModelPaginatedResponse);
      final data = _serializers
          .deserializeWith<ProjectAbstractViewModelPaginatedResponse>(
              serializer,
              response.data is String
                  ? jsonDecode(response.data)
                  : response.data);

      return Response<ProjectAbstractViewModelPaginatedResponse>(
        data: data,
        headers: response.headers,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  ///
  ///
  ///
  Future<Response<ProjectCommitteeVM>> v10ApiProjectsIdCommitteeCommitteeIdGet(
    String id,
    String committeeId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Projects/{id}/Committee/{committeeId}'
        .replaceAll('{' r'id' '}', id.toString())
        .replaceAll('{' r'committeeId' '}', committeeId.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [];

    return _dio
        .request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: {
          'secure': [
            {
              'type': 'apiKey',
              'name': 'Bearer',
              'keyName': 'Authorization',
              'where': 'header',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType:
            contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(ProjectCommitteeVM);
      final data = _serializers.deserializeWith<ProjectCommitteeVM>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<ProjectCommitteeVM>(
        data: data,
        headers: response.headers,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  ///
  ///
  ///
  Future<Response<ProjectTaskVM>>
      v10ApiProjectsIdCommitteeCommitteeIdTeamIdTaskIdGet(
    String id,
    String committeeId,
    String teamId,
    String taskId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/Projects/{id}/Committee/{committeeId}/{teamId}/{taskId}'
            .replaceAll('{' r'id' '}', id.toString())
            .replaceAll('{' r'committeeId' '}', committeeId.toString())
            .replaceAll('{' r'teamId' '}', teamId.toString())
            .replaceAll('{' r'taskId' '}', taskId.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [];

    return _dio
        .request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: {
          'secure': [
            {
              'type': 'apiKey',
              'name': 'Bearer',
              'keyName': 'Authorization',
              'where': 'header',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType:
            contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(ProjectTaskVM);
      final data = _serializers.deserializeWith<ProjectTaskVM>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<ProjectTaskVM>(
        data: data,
        headers: response.headers,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  ///
  ///
  ///
  Future<Response<void>> v10ApiProjectsIdCommitteeIdTeamIdTaskIdAddCommentPost(
    String id,
    String committeeId,
    String teamId,
    String taskId, {
    String comment,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/Projects/{id}/{committeeId}/{teamId}/{taskId}/AddComment'
            .replaceAll('{' r'id' '}', id.toString())
            .replaceAll('{' r'committeeId' '}', committeeId.toString())
            .replaceAll('{' r'teamId' '}', teamId.toString())
            .replaceAll('{' r'taskId' '}', taskId.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [
      'multipart/form-data',
    ];

    final Map<String, dynamic> formData = {};
    final _formFiles = <MapEntry<String, MultipartFile>>[];

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (comment != null) {
      formData[r'comment'] = parameterToString(_serializers, comment,
          type: const FullType(String));
    }
    final formDataObj = FormData.fromMap(formData);
    formDataObj.files.addAll(_formFiles);
    bodyData = formDataObj;

    return _dio.request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: {
          'secure': [
            {
              'type': 'apiKey',
              'name': 'Bearer',
              'keyName': 'Authorization',
              'where': 'header',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType:
            contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  ///
  ///
  ///
  Future<Response<CompleteProjectDetailsVM>> v10ApiProjectsIdGet(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/Projects/{id}'.replaceAll('{' r'id' '}', id.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [];

    return _dio
        .request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: {
          'secure': [
            {
              'type': 'apiKey',
              'name': 'Bearer',
              'keyName': 'Authorization',
              'where': 'header',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType:
            contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer =
          _serializers.serializerForType(CompleteProjectDetailsVM);
      final data = _serializers.deserializeWith<CompleteProjectDetailsVM>(
          serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<CompleteProjectDetailsVM>(
        data: data,
        headers: response.headers,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  ///
  ///
  ///
  Future<Response<BuiltList<TransactionViewModel>>>
      v10ApiProjectsIdTransactionsGet(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Projects/{id}/Transactions'
        .replaceAll('{' r'id' '}', id.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [];

    return _dio
        .request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'get'.toUpperCase(),
        headers: headerParams,
        extra: {
          'secure': [
            {
              'type': 'apiKey',
              'name': 'Bearer',
              'keyName': 'Authorization',
              'where': 'header',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType:
            contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      const collectionType = BuiltList;
      const type = FullType(collectionType, [FullType(TransactionViewModel)]);
      final BuiltList<TransactionViewModel> data = _serializers.deserialize(
          response.data is String ? jsonDecode(response.data) : response.data,
          specifiedType: type);

      return Response<BuiltList<TransactionViewModel>>(
        data: data,
        headers: response.headers,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }

  ///
  ///
  ///
  Future<Response<StringDataWrapperVM>> v10ApiProjectsV1Post(
    String projectName,
    String projectOwnerCompanyId,
    int cityId,
    int govId, {
    String projectDesc,
    String notes,
    String requesterEmail,
    String requesterName,
    String requesterPhone,
    String requesterLandline,
    CompanyUserRelationTypesEnum requesterRelationToOwnerCompany,
    String requesterRelationToOwnerCompanyDesc,
    BuiltList<MultipartFile> officialRequestFiles,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Projects/V1';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [
      'multipart/form-data',
    ];

    final Map<String, dynamic> formData = {};
    final _formFiles = <MapEntry<String, MultipartFile>>[];

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (projectName != null) {
      formData[r'ProjectName'] = parameterToString(_serializers, projectName,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (projectDesc != null) {
      formData[r'ProjectDesc'] = parameterToString(_serializers, projectDesc,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (notes != null) {
      formData[r'Notes'] =
          parameterToString(_serializers, notes, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (projectOwnerCompanyId != null) {
      formData[r'ProjectOwnerCompanyId'] = parameterToString(
          _serializers, projectOwnerCompanyId,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (requesterEmail != null) {
      formData[r'RequesterEmail'] = parameterToString(
          _serializers, requesterEmail,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (requesterName != null) {
      formData[r'RequesterName'] = parameterToString(
          _serializers, requesterName,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (requesterPhone != null) {
      formData[r'RequesterPhone'] = parameterToString(
          _serializers, requesterPhone,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (requesterLandline != null) {
      formData[r'RequesterLandline'] = parameterToString(
          _serializers, requesterLandline,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: CompanyUserRelationTypesEnum, datatype: CompanyUserRelationTypesEnum, containertype: ,
    if (requesterRelationToOwnerCompany != null) {
      formData[r'RequesterRelationToOwnerCompany'] = parameterToString(
          _serializers, requesterRelationToOwnerCompany,
          type: const FullType(CompanyUserRelationTypesEnum));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (requesterRelationToOwnerCompanyDesc != null) {
      formData[r'RequesterRelationToOwnerCompanyDesc'] = parameterToString(
          _serializers, requesterRelationToOwnerCompanyDesc,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: int, datatype: int, containertype: ,
    if (cityId != null) {
      formData[r'CityId'] =
          parameterToString(_serializers, cityId, type: const FullType(int));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: int, datatype: int, containertype: ,
    if (govId != null) {
      formData[r'GovId'] =
          parameterToString(_serializers, govId, type: const FullType(int));
    }
    if (officialRequestFiles != null) {
      _formFiles.addAll(officialRequestFiles
          .map((x) => MapEntry(r'OfficialRequestFiles' + _appended, x)));
    }
    final formDataObj = FormData.fromMap(formData);
    formDataObj.files.addAll(_formFiles);
    bodyData = formDataObj;

    return _dio
        .request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'post'.toUpperCase(),
        headers: headerParams,
        extra: {
          'secure': [
            {
              'type': 'apiKey',
              'name': 'Bearer',
              'keyName': 'Authorization',
              'where': 'header',
            },
          ],
          if (extra != null) ...extra,
        },
        validateStatus: validateStatus,
        contentType:
            contentTypes.isNotEmpty ? contentTypes[0] : 'application/json',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    )
        .then((response) {
      final serializer = _serializers.serializerForType(StringDataWrapperVM);
      final data = _serializers.deserializeWith<StringDataWrapperVM>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<StringDataWrapperVM>(
        data: data,
        headers: response.headers,
        request: response.request,
        redirects: response.redirects,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra,
      );
    });
  }
}
