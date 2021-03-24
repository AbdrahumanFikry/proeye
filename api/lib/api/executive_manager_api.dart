import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:proeye_api/model/req_executive_manager_edit_project_request_view_model.dart';
import 'package:proeye_api/model/req_executive_manager_complete_project_request_view_model.dart';
import 'package:proeye_api/model/req_receive_committee_vm.dart';
import 'package:proeye_api/model/executive_manager_simple_project_details_view_model.dart';
import 'package:proeye_api/model/req_edit_project_info.dart';
import 'package:proeye_api/model/project_name_id.dart';
import 'package:built_collection/built_collection.dart';

class ExecutiveManagerApi {
  final Dio _dio;
  Serializers _serializers;
  bool _fileNamesHaveBrackets;
  String get _appended => _fileNamesHaveBrackets ? '[]' : '';
  ExecutiveManagerApi(
      this._dio, this._serializers, this._fileNamesHaveBrackets);

  /// Complete a project requests for Execution manager
  ///
  ///
  Future<Response<void>> v10ApiExecutionManagerProjectsIdCompleteRequestPost(
    String id, {
    ReqExecutiveManagerCompleteProjectRequestViewModel
        reqExecutiveManagerCompleteProjectRequestViewModel,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/ExecutionManager/Projects/{id}/CompleteRequest'
            .replaceAll('{' r'id' '}', id.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [
      'application/json',
      'text/json',
      'application/_*+json',
    ];

    const type = FullType(ReqExecutiveManagerCompleteProjectRequestViewModel);
    final serializedBody = _serializers.serialize(
        reqExecutiveManagerCompleteProjectRequestViewModel,
        specifiedType: type);
    final jsonreqExecutiveManagerCompleteProjectRequestViewModel =
        json.encode(serializedBody);
    bodyData = jsonreqExecutiveManagerCompleteProjectRequestViewModel;

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

  /// Creates or updates receive committee for Execution manager
  ///
  ///
  Future<Response<void>>
      v10ApiExecutionManagerProjectsIdCreateOrUpdateReceiveCommitteePost(
    String id, {
    ReqReceiveCommitteeVM reqReceiveCommitteeVM,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/ExecutionManager/Projects/{id}/CreateOrUpdateReceiveCommittee'
            .replaceAll('{' r'id' '}', id.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [
      'application/json',
      'text/json',
      'application/_*+json',
    ];

    const type = FullType(ReqReceiveCommitteeVM);
    final serializedBody =
        _serializers.serialize(reqReceiveCommitteeVM, specifiedType: type);
    final jsonreqReceiveCommitteeVM = json.encode(serializedBody);
    bodyData = jsonreqReceiveCommitteeVM;

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

  /// Edit project info for ExecutiveManager
  ///
  ///
  Future<Response<void>> v10ApiExecutionManagerProjectsIdEditInfoPost(
    String id, {
    ReqExecutiveManagerEditProjectRequestViewModel
        reqExecutiveManagerEditProjectRequestViewModel,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/ExecutionManager/Projects/{id}/EditInfo'
        .replaceAll('{' r'id' '}', id.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [
      'application/json',
      'text/json',
      'application/_*+json',
    ];

    const type = FullType(ReqExecutiveManagerEditProjectRequestViewModel);
    final serializedBody = _serializers.serialize(
        reqExecutiveManagerEditProjectRequestViewModel,
        specifiedType: type);
    final jsonreqExecutiveManagerEditProjectRequestViewModel =
        json.encode(serializedBody);
    bodyData = jsonreqExecutiveManagerEditProjectRequestViewModel;

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

  /// Edit project info, for devs only
  ///
  ///
  Future<Response<void>> v10ApiExecutionManagerProjectsIdGeneralEditProjectPost(
    String id, {
    ReqEditProjectInfo reqEditProjectInfo,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/ExecutionManager/Projects/{id}/GeneralEditProject'
            .replaceAll('{' r'id' '}', id.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams.removeWhere((key, value) => value == null);
    headerParams.removeWhere((key, value) => value == null);

    final List<String> contentTypes = [
      'application/json',
      'text/json',
      'application/_*+json',
    ];

    const type = FullType(ReqEditProjectInfo);
    final serializedBody =
        _serializers.serialize(reqEditProjectInfo, specifiedType: type);
    final jsonreqEditProjectInfo = json.encode(serializedBody);
    bodyData = jsonreqEditProjectInfo;

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

  /// Get project requests for Execution manager
  ///
  ///
  Future<Response<BuiltList<ProjectNameId>>>
      v10ApiExecutionManagerProjectsRequestsGet({
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/ExecutionManager/Projects/Requests';

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

  /// Get single project request for Execution manager
  ///
  ///
  Future<Response<ExecutiveManagerSimpleProjectDetailsViewModel>>
      v10ApiExecutionManagerProjectsRequestsIdGet(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/ExecutionManager/Projects/Requests/{id}'
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
      final serializer = _serializers
          .serializerForType(ExecutiveManagerSimpleProjectDetailsViewModel);
      final data = _serializers
          .deserializeWith<ExecutiveManagerSimpleProjectDetailsViewModel>(
              serializer,
              response.data is String
                  ? jsonDecode(response.data)
                  : response.data);

      return Response<ExecutiveManagerSimpleProjectDetailsViewModel>(
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
