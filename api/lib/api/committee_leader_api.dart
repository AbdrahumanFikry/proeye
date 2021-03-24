import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:proeye_api/model/req_update_task_vm.dart';
import 'package:proeye_api/model/req_change_committee_team.dart';
import 'package:proeye_api/model/req_create_task_vm.dart';
import 'package:proeye_api/model/req_complete_task.dart';
import 'package:built_collection/built_collection.dart';

class CommitteeLeaderApi {
  final Dio _dio;
  Serializers _serializers;
  bool _fileNamesHaveBrackets;
  String get _appended => _fileNamesHaveBrackets ? '[]' : '';
  CommitteeLeaderApi(this._dio, this._serializers, this._fileNamesHaveBrackets);

  ///
  ///
  ///
  Future<Response<void>>
      v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdAddTaskPost(
    String projectId,
    String committeeId,
    String teamId, {
    ReqCreateTaskVM reqCreateTaskVM,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/AddTask'
            .replaceAll('{' r'projectId' '}', projectId.toString())
            .replaceAll('{' r'committeeId' '}', committeeId.toString())
            .replaceAll('{' r'teamId' '}', teamId.toString());

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

    const type = FullType(ReqCreateTaskVM);
    final serializedBody =
        _serializers.serialize(reqCreateTaskVM, specifiedType: type);
    final jsonreqCreateTaskVM = json.encode(serializedBody);
    bodyData = jsonreqCreateTaskVM;

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
  Future<Response<void>>
      v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdCompleteTaskPut(
    String projectId,
    String committeeId,
    String teamId,
    String taskId, {
    ReqCompleteTask reqCompleteTask,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/{taskId}/CompleteTask'
            .replaceAll('{' r'projectId' '}', projectId.toString())
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
      'application/json',
      'text/json',
      'application/_*+json',
    ];

    const type = FullType(ReqCompleteTask);
    final serializedBody =
        _serializers.serialize(reqCompleteTask, specifiedType: type);
    final jsonreqCompleteTask = json.encode(serializedBody);
    bodyData = jsonreqCompleteTask;

    return _dio.request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'put'.toUpperCase(),
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
  Future<Response<void>>
      v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdDeleteTaskDelete(
    String projectId,
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
        '/v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/{taskId}/DeleteTask'
            .replaceAll('{' r'projectId' '}', projectId.toString())
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
  Future<Response<void>>
      v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdTaskIdUpdateTaskPut(
    String projectId,
    String committeeId,
    String teamId,
    String taskId, {
    ReqUpdateTaskVM reqUpdateTaskVM,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/{taskId}/UpdateTask'
            .replaceAll('{' r'projectId' '}', projectId.toString())
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
      'application/json',
      'text/json',
      'application/_*+json',
    ];

    const type = FullType(ReqUpdateTaskVM);
    final serializedBody =
        _serializers.serialize(reqUpdateTaskVM, specifiedType: type);
    final jsonreqUpdateTaskVM = json.encode(serializedBody);
    bodyData = jsonreqUpdateTaskVM;

    return _dio.request(
      _path,
      queryParameters: queryParams,
      data: bodyData,
      options: Options(
        method: 'put'.toUpperCase(),
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
  Future<Response<void>>
      v10ApiCommitteeLeaderProjectIdCommitteeIdTeamIdUpdateMembersPost(
    String projectId,
    String committeeId,
    String teamId, {
    BuiltList<String> requestBody,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/{teamId}/UpdateMembers'
            .replaceAll('{' r'projectId' '}', projectId.toString())
            .replaceAll('{' r'committeeId' '}', committeeId.toString())
            .replaceAll('{' r'teamId' '}', teamId.toString());

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

    const type = FullType(BuiltList, [FullType(String)]);
    final serializedBody =
        _serializers.serialize(requestBody, specifiedType: type);
    final jsonrequestBody = json.encode(serializedBody);
    bodyData = jsonrequestBody;

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
  Future<Response<void>>
      v10ApiCommitteeLeaderProjectIdCommitteeIdUpdateTeamsPost(
    String projectId,
    String committeeId, {
    ReqChangeCommitteeTeam reqChangeCommitteeTeam,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/CommitteeLeader/{projectId}/{committeeId}/UpdateTeams'
            .replaceAll('{' r'projectId' '}', projectId.toString())
            .replaceAll('{' r'committeeId' '}', committeeId.toString());

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

    const type = FullType(ReqChangeCommitteeTeam);
    final serializedBody =
        _serializers.serialize(reqChangeCommitteeTeam, specifiedType: type);
    final jsonreqChangeCommitteeTeam = json.encode(serializedBody);
    bodyData = jsonreqChangeCommitteeTeam;

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
}
