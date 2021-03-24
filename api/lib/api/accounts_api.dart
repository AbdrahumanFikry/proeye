import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:proeye_api/model/add_claim_view_model.dart';
import 'package:proeye_api/model/user_view_model_paginated_response.dart';
import 'package:proeye_api/model/boolean_data_wrapper_vm.dart';
import 'package:proeye_api/model/token_bag_view_model.dart';
import 'package:proeye_api/model/change_any_password_view_model.dart';
import 'package:proeye_api/model/token_api_model.dart';
import 'package:proeye_api/model/change_password_view_model.dart';
import 'package:proeye_api/model/user_view_model.dart';
import 'package:proeye_api/api_util.dart';

class AccountsApi {
  final Dio _dio;
  Serializers _serializers;
  bool _fileNamesHaveBrackets;
  String get _appended => _fileNamesHaveBrackets ? '[]' : '';
  AccountsApi(this._dio, this._serializers, this._fileNamesHaveBrackets);

  /// Change current authorized password , login Required
  ///
  ///
  Future<Response<void>> v10ApiAccountsChangePasswordPut({
    ChangePasswordViewModel changePasswordViewModel,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/ChangePassword';

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

    const type = FullType(ChangePasswordViewModel);
    final serializedBody =
        _serializers.serialize(changePasswordViewModel, specifiedType: type);
    final jsonchangePasswordViewModel = json.encode(serializedBody);
    bodyData = jsonchangePasswordViewModel;

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

  /// Get The Users ,,
  ///
  ///
  Future<Response<UserViewModelPaginatedResponse>> v10ApiAccountsGet({
    String partialId,
    String partialNameAr,
    String partialEmail,
    int pageIndex,
    int pageSize,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'partialId'] = partialId;
    queryParams[r'partialNameAr'] = partialNameAr;
    queryParams[r'partialEmail'] = partialEmail;
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
          _serializers.serializerForType(UserViewModelPaginatedResponse);
      final data = _serializers.deserializeWith<UserViewModelPaginatedResponse>(
          serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<UserViewModelPaginatedResponse>(
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

  /// Activate user , Require system Admin
  ///
  ///
  Future<Response<void>> v10ApiAccountsIdActivatePut(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/{id}/Activate'
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

  /// Add Claim, Require sys admin
  ///
  ///
  Future<Response<void>> v10ApiAccountsIdAddClaimPut(
    String id, {
    AddClaimViewModel addClaimViewModel,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/{id}/AddClaim'
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

    const type = FullType(AddClaimViewModel);
    final serializedBody =
        _serializers.serialize(addClaimViewModel, specifiedType: type);
    final jsonaddClaimViewModel = json.encode(serializedBody);
    bodyData = jsonaddClaimViewModel;

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

  /// Change the password for any user by Id. , System Admin Required
  ///
  ///
  Future<Response<void>> v10ApiAccountsIdChangeAnyPasswordPut(
    String id, {
    ChangeAnyPasswordViewModel changeAnyPasswordViewModel,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/{id}/ChangeAnyPassword'
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

    const type = FullType(ChangeAnyPasswordViewModel);
    final serializedBody =
        _serializers.serialize(changeAnyPasswordViewModel, specifiedType: type);
    final jsonchangeAnyPasswordViewModel = json.encode(serializedBody);
    bodyData = jsonchangeAnyPasswordViewModel;

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

  /// Get if it the first login , Anonymous usage
  ///
  ///
  Future<Response<BooleanDataWrapperVM>> v10ApiAccountsIdCheckFirstLoginGet(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/{id}/CheckFirstLogin'
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
      final serializer = _serializers.serializerForType(BooleanDataWrapperVM);
      final data = _serializers.deserializeWith<BooleanDataWrapperVM>(
          serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<BooleanDataWrapperVM>(
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

  /// Remove a claim for a user, System Admin Required
  ///
  ///
  Future<Response<void>> v10ApiAccountsIdClaimsTypeDelete(
    String id,
    String type, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/{id}/Claims/{type}'
        .replaceAll('{' r'id' '}', id.toString())
        .replaceAll('{' r'type' '}', type.toString());

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

  /// deactivate a user, System Admin Required
  ///
  ///
  Future<Response<void>> v10ApiAccountsIdDeactivateDelete(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/{id}/Deactivate'
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

  /// Get The User by Id
  ///
  ///
  Future<Response<UserViewModel>> v10ApiAccountsIdGet(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/Accounts/{id}'.replaceAll('{' r'id' '}', id.toString());

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
      final serializer = _serializers.serializerForType(UserViewModel);
      final data = _serializers.deserializeWith<UserViewModel>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<UserViewModel>(
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

  /// Update a user, System Admin Required
  ///
  ///
  Future<Response<UserViewModel>> v10ApiAccountsIdPut(
    String id,
    String nameAr, {
    String email,
    String phoneNumber,
    String photoUrl,
    String jobDesc,
    bool isGlobalReviewer,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/Accounts/{id}'.replaceAll('{' r'id' '}', id.toString());

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
    if (nameAr != null) {
      formData[r'NameAr'] =
          parameterToString(_serializers, nameAr, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (email != null) {
      formData[r'Email'] =
          parameterToString(_serializers, email, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (phoneNumber != null) {
      formData[r'PhoneNumber'] = parameterToString(_serializers, phoneNumber,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (photoUrl != null) {
      formData[r'PhotoUrl'] = parameterToString(_serializers, photoUrl,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (jobDesc != null) {
      formData[r'JobDesc'] = parameterToString(_serializers, jobDesc,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: bool, datatype: bool, containertype: ,
    if (isGlobalReviewer != null) {
      formData[r'IsGlobalReviewer'] = parameterToString(
          _serializers, isGlobalReviewer,
          type: const FullType(bool));
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
    )
        .then((response) {
      final serializer = _serializers.serializerForType(UserViewModel);
      final data = _serializers.deserializeWith<UserViewModel>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<UserViewModel>(
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

  /// Return First Login , Admin usage
  ///
  ///
  Future<Response<void>> v10ApiAccountsIdReturnFirstLoginPut(
    String id, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/{id}/ReturnFirstLogin'
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

  ///
  ///
  ///
  Future<Response<void>> v10ApiAccountsIsAccessTokenValidGet({
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/IsAccessTokenValid';

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
    );
  }

  /// Login First Time , Anonymous usage
  ///
  ///
  Future<Response<TokenBagViewModel>> v10ApiAccountsLoginFirstTimePost(
    String nationalId,
    String password,
    String confirmPassword,
    String phoneNumber,
    String nameAr, {
    String email,
    String jobDesc,
    String photoUrl,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/LoginFirstTime';

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
    if (nationalId != null) {
      formData[r'NationalId'] = parameterToString(_serializers, nationalId,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (password != null) {
      formData[r'Password'] = parameterToString(_serializers, password,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (confirmPassword != null) {
      formData[r'ConfirmPassword'] = parameterToString(
          _serializers, confirmPassword,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (phoneNumber != null) {
      formData[r'PhoneNumber'] = parameterToString(_serializers, phoneNumber,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (nameAr != null) {
      formData[r'NameAr'] =
          parameterToString(_serializers, nameAr, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (email != null) {
      formData[r'Email'] =
          parameterToString(_serializers, email, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (jobDesc != null) {
      formData[r'JobDesc'] = parameterToString(_serializers, jobDesc,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (photoUrl != null) {
      formData[r'PhotoUrl'] = parameterToString(_serializers, photoUrl,
          type: const FullType(String));
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
      final serializer = _serializers.serializerForType(TokenBagViewModel);
      final data = _serializers.deserializeWith<TokenBagViewModel>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<TokenBagViewModel>(
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
  Future<Response<TokenBagViewModel>> v10ApiAccountsLoginPost(
    String nationalId,
    String password, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/Login';

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
    if (nationalId != null) {
      formData[r'NationalId'] = parameterToString(_serializers, nationalId,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (password != null) {
      formData[r'Password'] = parameterToString(_serializers, password,
          type: const FullType(String));
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
      final serializer = _serializers.serializerForType(TokenBagViewModel);
      final data = _serializers.deserializeWith<TokenBagViewModel>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<TokenBagViewModel>(
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

  /// Register a new user , Roles =  \"President|ExecutiveManager|EngManagementDirector|SystemAdmin|NormalUser|Developer\" ,  Require a system admin
  ///
  /// President|ExecutiveManager|EngManagementDirector|SystemAdmin|NormalUser|Developer\" ,  Require a system admin
  Future<Response<UserViewModel>> v10ApiAccountsPost(
    String nationalId,
    String role,
    bool isGlobalReviewer, {
    String nameAr,
    String email,
    String jobDesc,
    String photoUrl,
    String phoneNumber,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts';

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
    if (nationalId != null) {
      formData[r'NationalId'] = parameterToString(_serializers, nationalId,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (nameAr != null) {
      formData[r'NameAr'] =
          parameterToString(_serializers, nameAr, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (email != null) {
      formData[r'Email'] =
          parameterToString(_serializers, email, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (role != null) {
      formData[r'Role'] =
          parameterToString(_serializers, role, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (jobDesc != null) {
      formData[r'JobDesc'] = parameterToString(_serializers, jobDesc,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (photoUrl != null) {
      formData[r'PhotoUrl'] = parameterToString(_serializers, photoUrl,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (phoneNumber != null) {
      formData[r'PhoneNumber'] = parameterToString(_serializers, phoneNumber,
          type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: bool, datatype: bool, containertype: ,
    if (isGlobalReviewer != null) {
      formData[r'IsGlobalReviewer'] = parameterToString(
          _serializers, isGlobalReviewer,
          type: const FullType(bool));
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
      final serializer = _serializers.serializerForType(UserViewModel);
      final data = _serializers.deserializeWith<UserViewModel>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<UserViewModel>(
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

  /// Refresh a  token
  ///
  ///
  Future<Response<TokenBagViewModel>> v10ApiAccountsRefreshTokenPut({
    TokenApiModel tokenApiModel,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/RefreshToken';

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

    const type = FullType(TokenApiModel);
    final serializedBody =
        _serializers.serialize(tokenApiModel, specifiedType: type);
    final jsontokenApiModel = json.encode(serializedBody);
    bodyData = jsontokenApiModel;

    return _dio
        .request(
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
    )
        .then((response) {
      final serializer = _serializers.serializerForType(TokenBagViewModel);
      final data = _serializers.deserializeWith<TokenBagViewModel>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<TokenBagViewModel>(
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

  /// Revoke  a  token
  ///
  ///
  Future<Response<void>> v10ApiAccountsRevokeTokenDelete({
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/Accounts/RevokeToken';

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
}
