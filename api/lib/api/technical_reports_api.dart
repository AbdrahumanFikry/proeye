import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:proeye_api/model/technical_report_abstract_vm_paginated_response.dart';
import 'package:proeye_api/model/technical_report_vm.dart';
import 'package:proeye_api/api_util.dart';
import 'package:built_collection/built_collection.dart';

class TechnicalReportsApi {
  final Dio _dio;
  Serializers _serializers;
  bool _fileNamesHaveBrackets;
  String get _appended => _fileNamesHaveBrackets ? '[]' : '';
  TechnicalReportsApi(
      this._dio, this._serializers, this._fileNamesHaveBrackets);

  ///
  ///
  ///
  Future<Response<TechnicalReportVM>>
      v10ApiProjectsIdTechnicalReportsCreateReportPost(
    String id, {
    String desc,
    String title,
    DateTime date,
    BuiltList<MultipartFile> officialRequestFiles,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Projects/{id}/TechnicalReports/CreateReport'
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
    if (desc != null) {
      formData[r'Desc'] =
          parameterToString(_serializers, desc, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (title != null) {
      formData[r'Title'] =
          parameterToString(_serializers, title, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: DateTime, datatype: DateTime, containertype: ,
    if (date != null) {
      formData[r'Date'] =
          parameterToString(_serializers, date, type: const FullType(DateTime));
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
      final serializer = _serializers.serializerForType(TechnicalReportVM);
      final data = _serializers.deserializeWith<TechnicalReportVM>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<TechnicalReportVM>(
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
  Future<Response<TechnicalReportAbstractVMPaginatedResponse>>
      v10ApiProjectsIdTechnicalReportsGet(
    String id, {
    int pageIndex,
    int pageSize,
    String filterStr,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Projects/{id}/TechnicalReports'
        .replaceAll('{' r'id' '}', id.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'pageIndex'] = pageIndex;
    queryParams[r'pageSize'] = pageSize;
    queryParams[r'filterStr'] = filterStr;
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
          .serializerForType(TechnicalReportAbstractVMPaginatedResponse);
      final data = _serializers
          .deserializeWith<TechnicalReportAbstractVMPaginatedResponse>(
              serializer,
              response.data is String
                  ? jsonDecode(response.data)
                  : response.data);

      return Response<TechnicalReportAbstractVMPaginatedResponse>(
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
  Future<Response<TechnicalReportVM>>
      v10ApiProjectsIdTechnicalReportsReportIdGet(
    String id,
    String reportId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Projects/{id}/TechnicalReports/{reportId}'
        .replaceAll('{' r'id' '}', id.toString())
        .replaceAll('{' r'reportId' '}', reportId.toString());

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
      final serializer = _serializers.serializerForType(TechnicalReportVM);
      final data = _serializers.deserializeWith<TechnicalReportVM>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<TechnicalReportVM>(
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
