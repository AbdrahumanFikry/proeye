import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:proeye_api/model/eng_management_director_simple_project_details_view_model.dart';
import 'package:proeye_api/model/company_user_relation_types_enum.dart';
import 'package:proeye_api/model/project_name_id.dart';
import 'package:proeye_api/api_util.dart';
import 'package:built_collection/built_collection.dart';

class EngManagementDirectorApi {
  final Dio _dio;
  Serializers _serializers;
  bool _fileNamesHaveBrackets;
  String get _appended => _fileNamesHaveBrackets ? '[]' : '';
  EngManagementDirectorApi(
      this._dio, this._serializers, this._fileNamesHaveBrackets);

  /// Confirm Project Request for Eng Management Director
  ///
  ///
  Future<Response<void>> v10ApiEngManagementDirectorProjectsIdAcceptRequestPost(
    String id, {
    bool isDirectSelection,
    String executionCompanyId,
    String executerSelectionDesc,
    BuiltList<MultipartFile> officialRequestFiles,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/EngManagementDirector/Projects/{id}/AcceptRequest'
            .replaceAll('{' r'id' '}', id.toString());

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
    //basetype: bool, datatype: bool, containertype: ,
    if (isDirectSelection != null) {
      formData[r'IsDirectSelection'] = parameterToString(
          _serializers, isDirectSelection,
          type: const FullType(bool));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (executionCompanyId != null) {
      formData[r'ExecutionCompanyId'] = parameterToString(
          _serializers, executionCompanyId,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (executerSelectionDesc != null) {
      formData[r'ExecuterSelectionDesc'] = parameterToString(
          _serializers, executerSelectionDesc,
          type: const FullType(String));
    }
    if (officialRequestFiles != null) {
      _formFiles.addAll(officialRequestFiles
          .map((x) => MapEntry(r'OfficialRequestFiles' + _appended, x)));
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

  /// Edit Project Request for Eng Management Director
  ///
  ///
  Future<Response<void>> v10ApiEngManagementDirectorProjectsIdEditRequestPost(
    String id, {
    int cityId,
    int govId,
    String notes,
    String projectDesc,
    String projectName,
    String projectOwnerCompanyId,
    String requesterEmail,
    String requesterLandline,
    String requesterName,
    String requesterPhone,
    CompanyUserRelationTypesEnum requesterRelationToOwnerCompany,
    String requesterRelationToOwnerCompanyDesc,
    BuiltList<String> oldFiles,
    BuiltList<MultipartFile> officialRequestFiles,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/EngManagementDirector/Projects/{id}/EditRequest'
            .replaceAll('{' r'id' '}', id.toString());

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
    if (projectDesc != null) {
      formData[r'ProjectDesc'] = parameterToString(_serializers, projectDesc,
          type: const FullType(String));
    }

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
    if (requesterLandline != null) {
      formData[r'RequesterLandline'] = parameterToString(
          _serializers, requesterLandline,
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
    //primitiveType: , isMap: false, isArray: true
    //basetype: String, datatype: BuiltList&lt;String&gt;, containertype: ,
    if (oldFiles != null) {
      formData[r'OldFiles'] = parameterToString(_serializers, oldFiles,
          type: const FullType(BuiltList, [const FullType(String)]));
    }
    if (officialRequestFiles != null) {
      _formFiles.addAll(officialRequestFiles
          .map((x) => MapEntry(r'OfficialRequestFiles' + _appended, x)));
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

  /// Reject Project Request for Eng Management Director
  ///
  ///
  Future<Response<void>> v10ApiEngManagementDirectorProjectsIdRejectRequestPost(
    String id, {
    String reviewNotes,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/EngManagementDirector/Projects/{id}/RejectRequest'
            .replaceAll('{' r'id' '}', id.toString());

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
    if (reviewNotes != null) {
      formData[r'reviewNotes'] = parameterToString(_serializers, reviewNotes,
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

  /// Specify if Eng Management Director is a supervisor
  ///
  ///
  Future<Response<void>>
      v10ApiEngManagementDirectorProjectsIdSpecifySupervisionStatusPost(
    String id, {
    bool isSupervisor,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/EngManagementDirector/Projects/{id}/SpecifySupervisionStatus'
            .replaceAll('{' r'id' '}', id.toString());

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
    //basetype: bool, datatype: bool, containertype: ,
    if (isSupervisor != null) {
      formData[r'isSupervisor'] = parameterToString(_serializers, isSupervisor,
          type: const FullType(bool));
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

  /// get projects request
  ///
  ///
  Future<Response<BuiltList<ProjectNameId>>>
      v10ApiEngManagementDirectorProjectsRequestsGet({
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/EngManagementDirector/Projects/Requests';

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
      const type = FullType(collectionType, [FullType(ProjectNameId)]);
      final BuiltList<ProjectNameId> data = _serializers.deserialize(
          response.data is String ? jsonDecode(response.data) : response.data,
          specifiedType: type);

      return Response<BuiltList<ProjectNameId>>(
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

  /// get project request
  ///
  ///
  Future<Response<EngManagementDirectorSimpleProjectDetailsViewModel>>
      v10ApiEngManagementDirectorProjectsRequestsIdGet(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/EngManagementDirector/Projects/Requests/{id}'
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
      final serializer = _serializers.serializerForType(
          EngManagementDirectorSimpleProjectDetailsViewModel);
      final data = _serializers
          .deserializeWith<EngManagementDirectorSimpleProjectDetailsViewModel>(
              serializer,
              response.data is String
                  ? jsonDecode(response.data)
                  : response.data);

      return Response<EngManagementDirectorSimpleProjectDetailsViewModel>(
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
