import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:proeye_api/model/gov_company_view_model_paginated_response.dart';
import 'package:proeye_api/model/gov_company_view_model.dart';
import 'package:proeye_api/model/int32_data_wrapper_vm.dart';
import 'package:proeye_api/model/company_section.dart';
import 'package:proeye_api/model/company_activity.dart';
import 'package:proeye_api/model/gov_company_view_model_data_wrapper_vm.dart';
import 'package:proeye_api/model/execution_company_view_model_paginated_response.dart';
import 'package:proeye_api/model/execution_company_view_model.dart';
import 'package:proeye_api/model/execution_company_view_model_data_wrapper_vm.dart';
import 'package:built_collection/built_collection.dart';
import 'package:proeye_api/api_util.dart';

class CompaniesApi {
  final Dio _dio;
  Serializers _serializers;
  bool _fileNamesHaveBrackets;
  String get _appended => _fileNamesHaveBrackets ? '[]' : '';
  CompaniesApi(this._dio, this._serializers, this._fileNamesHaveBrackets);

  /// Get Activities ,, Anonymous Usage
  ///
  ///
  Future<Response<BuiltList<CompanyActivity>>> activitiesGet({
    String partialName,
    bool isActive,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/Activities';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'partialName'] = partialName;
    queryParams[r'isActive'] = isActive;
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
      const type = FullType(collectionType, [FullType(CompanyActivity)]);
      final BuiltList<CompanyActivity> data = _serializers.deserialize(
          response.data is String ? jsonDecode(response.data) : response.data,
          specifiedType: type);

      return Response<BuiltList<CompanyActivity>>(
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

  /// Activate a deleted Activity,, Sys Admin Require
  ///
  ///
  Future<Response<void>> activitiesIdActivatePut(
    int id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/Activities/{id}/Activate'.replaceAll('{' r'id' '}', id.toString());

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

  /// Delete Activities ,, Sys Admin Require
  ///
  ///
  Future<Response<void>> activitiesIdDelete(
    int id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/Activities/{id}'.replaceAll('{' r'id' '}', id.toString());

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

  /// Update Activity ,, SysAdminRequire
  ///
  ///
  Future<Response<void>> activitiesIdPut(
    int id, {
    String name,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/Activities/{id}'.replaceAll('{' r'id' '}', id.toString());

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
    if (name != null) {
      formData[r'name'] =
          parameterToString(_serializers, name, type: const FullType(String));
    }
    final formDataObj = FormData.fromMap(formData);
    formDataObj.files.addAll(_formFiles);
    bodyData = formDataObj;

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

  /// Create an activity,,  Require System Admin
  ///
  ///
  Future<Response<Int32DataWrapperVM>> activitiesPost({
    String name,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/Activities';

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
    if (name != null) {
      formData[r'name'] =
          parameterToString(_serializers, name, type: const FullType(String));
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
      final serializer = _serializers.serializerForType(Int32DataWrapperVM);
      final data = _serializers.deserializeWith<Int32DataWrapperVM>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<Int32DataWrapperVM>(
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

  /// Get sections ,, Anonymous Usage
  ///
  ///
  Future<Response<BuiltList<CompanySection>>> sectionsGet({
    String partialName,
    bool isActive,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/Sections';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'partialName'] = partialName;
    queryParams[r'isActive'] = isActive;
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
      const type = FullType(collectionType, [FullType(CompanySection)]);
      final BuiltList<CompanySection> data = _serializers.deserialize(
          response.data is String ? jsonDecode(response.data) : response.data,
          specifiedType: type);

      return Response<BuiltList<CompanySection>>(
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

  /// Activate a deleted section,, Sys Admin Require
  ///
  ///
  Future<Response<void>> sectionsIdActivatePut(
    int id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/Sections/{id}/Activate'.replaceAll('{' r'id' '}', id.toString());

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

  /// Delete Sections ,, Anonymous Usage
  ///
  ///
  Future<Response<void>> sectionsIdDelete(
    int id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/Sections/{id}'.replaceAll('{' r'id' '}', id.toString());

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

  /// Update Section ,, Anonymous Usage
  ///
  ///
  Future<Response<void>> sectionsIdPut(
    int id, {
    String name,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/Sections/{id}'.replaceAll('{' r'id' '}', id.toString());

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
    if (name != null) {
      formData[r'name'] =
          parameterToString(_serializers, name, type: const FullType(String));
    }
    final formDataObj = FormData.fromMap(formData);
    formDataObj.files.addAll(_formFiles);
    bodyData = formDataObj;

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

  /// Create a section,,  Require System Admin
  ///
  ///
  Future<Response<Int32DataWrapperVM>> sectionsPost({
    String name,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/Sections';

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
    if (name != null) {
      formData[r'name'] =
          parameterToString(_serializers, name, type: const FullType(String));
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
      final serializer = _serializers.serializerForType(Int32DataWrapperVM);
      final data = _serializers.deserializeWith<Int32DataWrapperVM>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<Int32DataWrapperVM>(
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

  /// Get Execution Companies
  ///
  ///
  Future<Response<ExecutionCompanyViewModelPaginatedResponse>>
      v10ApiCompaniesExecutionGet({
    String textFilter,
    bool isVerified,
    int pageIndex,
    int pageSize,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Companies/Execution';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'textFilter'] = textFilter;
    queryParams[r'isVerified'] = isVerified;
    queryParams[r'pageIndex'] = pageIndex;
    queryParams[r'pageSize'] = pageSize;
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
          .serializerForType(ExecutionCompanyViewModelPaginatedResponse);
      final data = _serializers
          .deserializeWith<ExecutionCompanyViewModelPaginatedResponse>(
              serializer,
              response.data is String
                  ? jsonDecode(response.data)
                  : response.data);

      return Response<ExecutionCompanyViewModelPaginatedResponse>(
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

  /// Create Execution Company, Anonymous Usage
  ///
  ///
  Future<Response<ExecutionCompanyViewModelDataWrapperVM>>
      v10ApiCompaniesExecutionPost(
    String name, {
    String id,
    String engLayer,
    String companyRegister,
    String phone1,
    String phone2,
    String address,
    String fax,
    String notes,
    String email,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Companies/Execution';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'id'] = id;
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
    if (engLayer != null) {
      formData[r'EngLayer'] = parameterToString(_serializers, engLayer,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (companyRegister != null) {
      formData[r'CompanyRegister'] = parameterToString(
          _serializers, companyRegister,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (name != null) {
      formData[r'Name'] =
          parameterToString(_serializers, name, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (phone1 != null) {
      formData[r'Phone1'] =
          parameterToString(_serializers, phone1, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (phone2 != null) {
      formData[r'Phone2'] =
          parameterToString(_serializers, phone2, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (address != null) {
      formData[r'Address'] = parameterToString(_serializers, address,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (fax != null) {
      formData[r'Fax'] =
          parameterToString(_serializers, fax, type: const FullType(String));
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
    if (email != null) {
      formData[r'Email'] =
          parameterToString(_serializers, email, type: const FullType(String));
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
      final serializer = _serializers
          .serializerForType(ExecutionCompanyViewModelDataWrapperVM);
      final data =
          _serializers.deserializeWith<ExecutionCompanyViewModelDataWrapperVM>(
              serializer,
              response.data is String
                  ? jsonDecode(response.data)
                  : response.data);

      return Response<ExecutionCompanyViewModelDataWrapperVM>(
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

  /// Get Single Execution Company
  ///
  ///
  Future<Response<ExecutionCompanyViewModel>>
      v10ApiCompaniesExecutionsCompanyIdGet(
    String companyId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Companies/Executions/{companyId}'
        .replaceAll('{' r'companyId' '}', companyId.toString());

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
          _serializers.serializerForType(ExecutionCompanyViewModel);
      final data = _serializers.deserializeWith<ExecutionCompanyViewModel>(
          serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<ExecutionCompanyViewModel>(
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

  /// Create Government Company , Anonymous Usage
  ///
  ///
  Future<Response<GovCompanyViewModelDataWrapperVM>> v10ApiCompaniesGovPost(
    int activityId,
    int sectionId,
    String name, {
    String id,
    bool isInMansouraUniversity,
    String phone1,
    String phone2,
    String address,
    String fax,
    String notes,
    String email,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Companies/Gov';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'id'] = id;
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
    if (activityId != null) {
      formData[r'ActivityId'] = parameterToString(_serializers, activityId,
          type: const FullType(int));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: int, datatype: int, containertype: ,
    if (sectionId != null) {
      formData[r'SectionId'] =
          parameterToString(_serializers, sectionId, type: const FullType(int));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: bool, datatype: bool, containertype: ,
    if (isInMansouraUniversity != null) {
      formData[r'IsInMansouraUniversity'] = parameterToString(
          _serializers, isInMansouraUniversity,
          type: const FullType(bool));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (name != null) {
      formData[r'Name'] =
          parameterToString(_serializers, name, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (phone1 != null) {
      formData[r'Phone1'] =
          parameterToString(_serializers, phone1, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (phone2 != null) {
      formData[r'Phone2'] =
          parameterToString(_serializers, phone2, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (address != null) {
      formData[r'Address'] = parameterToString(_serializers, address,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (fax != null) {
      formData[r'Fax'] =
          parameterToString(_serializers, fax, type: const FullType(String));
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
    if (email != null) {
      formData[r'Email'] =
          parameterToString(_serializers, email, type: const FullType(String));
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
      final serializer =
          _serializers.serializerForType(GovCompanyViewModelDataWrapperVM);
      final data =
          _serializers.deserializeWith<GovCompanyViewModelDataWrapperVM>(
              serializer,
              response.data is String
                  ? jsonDecode(response.data)
                  : response.data);

      return Response<GovCompanyViewModelDataWrapperVM>(
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

  /// Get Single Gov Company
  ///
  ///
  Future<Response<GovCompanyViewModel>> v10ApiCompaniesGovsCompanyIdGet(
    String companyId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Companies/Govs/{companyId}'
        .replaceAll('{' r'companyId' '}', companyId.toString());

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
      final serializer = _serializers.serializerForType(GovCompanyViewModel);
      final data = _serializers.deserializeWith<GovCompanyViewModel>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<GovCompanyViewModel>(
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

  /// Get Gov Companies
  ///
  ///
  Future<Response<GovCompanyViewModelPaginatedResponse>>
      v10ApiCompaniesGovsGet({
    String textFilter,
    int activityId,
    int sectionId,
    bool isVerified,
    bool isInMansUniversity,
    int pageIndex,
    int pageSize,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Companies/Govs';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'textFilter'] = textFilter;
    queryParams[r'activityId'] = activityId;
    queryParams[r'sectionId'] = sectionId;
    queryParams[r'isVerified'] = isVerified;
    queryParams[r'isInMansUniversity'] = isInMansUniversity;
    queryParams[r'pageIndex'] = pageIndex;
    queryParams[r'pageSize'] = pageSize;
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
          _serializers.serializerForType(GovCompanyViewModelPaginatedResponse);
      final data =
          _serializers.deserializeWith<GovCompanyViewModelPaginatedResponse>(
              serializer,
              response.data is String
                  ? jsonDecode(response.data)
                  : response.data);

      return Response<GovCompanyViewModelPaginatedResponse>(
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

  /// Delete a Company , System Admin Usage
  ///
  ///
  Future<Response<void>> v10ApiCompaniesIdDelete(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/Companies/{id}'.replaceAll('{' r'id' '}', id.toString());

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

  /// Verify  Company , System Admin Usage
  ///
  ///
  Future<Response<void>> v10ApiCompaniesIdVerifyPut(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Companies/{id}/Verify'
        .replaceAll('{' r'id' '}', id.toString());

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

  /// Import gov companies , System Admin Usage
  ///
  ///
  Future<Response<void>> v10ApiImportGovCompaniesPut({
    MultipartFile internalCSV,
    MultipartFile externalCSV,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/ImportGovCompanies';

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

    if (internalCSV != null) {
      _formFiles.add(MapEntry(r'InternalCSV', internalCSV));
    }
    if (externalCSV != null) {
      _formFiles.add(MapEntry(r'ExternalCSV', externalCSV));
    }
    final formDataObj = FormData.fromMap(formData);
    formDataObj.files.addAll(_formFiles);
    bodyData = formDataObj;

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
}
