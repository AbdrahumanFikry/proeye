import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:proeye_api/model/manager_vm.dart';
import 'package:proeye_api/model/detailed_general_activity_vm.dart';
import 'package:proeye_api/model/introduction_vm.dart';
import 'package:proeye_api/model/detailed_general_section_vm.dart';
import 'package:proeye_api/model/abstract_general_activity_vm.dart';
import 'package:proeye_api/model/general_post_vm.dart';
import 'package:proeye_api/model/center_main_work_vm.dart';
import 'package:proeye_api/model/abstract_general_section_vm.dart';
import 'package:proeye_api/model/contact_us_vm.dart';
import 'package:proeye_api/api_util.dart';
import 'package:built_collection/built_collection.dart';

class PublicPageApi {
  final Dio _dio;
  Serializers _serializers;
  bool _fileNamesHaveBrackets;
  String get _appended => _fileNamesHaveBrackets ? '[]' : '';
  PublicPageApi(this._dio, this._serializers, this._fileNamesHaveBrackets);

  ///
  ///
  ///
  Future<Response<AbstractGeneralSectionVM>>
      v10ApiPublicPageActivitiesActivityIdCreateOrUpdateSectionPost(
    String activityId, {
    String sectionId,
    String title,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/PublicPage/Activities/{activityId}/CreateOrUpdateSection'
            .replaceAll('{' r'activityId' '}', activityId.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'sectionId'] = sectionId;
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
    if (title != null) {
      formData[r'title'] =
          parameterToString(_serializers, title, type: const FullType(String));
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
          _serializers.serializerForType(AbstractGeneralSectionVM);
      final data = _serializers.deserializeWith<AbstractGeneralSectionVM>(
          serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<AbstractGeneralSectionVM>(
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
  Future<Response<void>>
      v10ApiPublicPageActivitiesActivityIdDeleteActivityDelete(
    String activityId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/PublicPage/Activities/{activityId}/DeleteActivity'
            .replaceAll('{' r'activityId' '}', activityId.toString());

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
  Future<Response<DetailedGeneralActivityVM>>
      v10ApiPublicPageActivitiesActivityIdGet(
    String activityId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/Activities/{activityId}'
        .replaceAll('{' r'activityId' '}', activityId.toString());

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
          _serializers.serializerForType(DetailedGeneralActivityVM);
      final data = _serializers.deserializeWith<DetailedGeneralActivityVM>(
          serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<DetailedGeneralActivityVM>(
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
  Future<Response<GeneralPostVM>>
      v10ApiPublicPageActivitiesActivityIdSectionIdCreateOrUpdatePostPost(
    String activityId,
    String sectionId, {
    String postId,
    String title,
    String desc,
    BuiltList<String> fullImageUrls,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/PublicPage/Activities/{activityId}/{sectionId}/CreateOrUpdatePost'
            .replaceAll('{' r'activityId' '}', activityId.toString())
            .replaceAll('{' r'sectionId' '}', sectionId.toString());

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'postId'] = postId;
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
    if (title != null) {
      formData[r'Title'] =
          parameterToString(_serializers, title, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (desc != null) {
      formData[r'Desc'] =
          parameterToString(_serializers, desc, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: true
    //basetype: String, datatype: BuiltList&lt;String&gt;, containertype: ,
    if (fullImageUrls != null) {
      formData[r'FullImageUrls'] = parameterToString(
          _serializers, fullImageUrls,
          type: const FullType(BuiltList, [const FullType(String)]));
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
      final serializer = _serializers.serializerForType(GeneralPostVM);
      final data = _serializers.deserializeWith<GeneralPostVM>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<GeneralPostVM>(
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
  Future<Response<DetailedGeneralSectionVM>>
      v10ApiPublicPageActivitiesActivityIdSectionIdGet(
    String activityId,
    String sectionId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/PublicPage/Activities/{activityId}/{sectionId}'
            .replaceAll('{' r'activityId' '}', activityId.toString())
            .replaceAll('{' r'sectionId' '}', sectionId.toString());

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
          _serializers.serializerForType(DetailedGeneralSectionVM);
      final data = _serializers.deserializeWith<DetailedGeneralSectionVM>(
          serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<DetailedGeneralSectionVM>(
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
  Future<Response<AbstractGeneralActivityVM>>
      v10ApiPublicPageActivitiesCreateOrUpdateActivityPost({
    String activityId,
    String title,
    String fullImageUrl,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path =
        '/v1.0/Api/PublicPage/Activities/CreateOrUpdateActivity';

    final Map<String, dynamic> queryParams = {};
    final Map<String, dynamic> headerParams = {
      if (headers != null) ...headers,
    };
    dynamic bodyData;

    queryParams[r'activityId'] = activityId;
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
    if (title != null) {
      formData[r'Title'] =
          parameterToString(_serializers, title, type: const FullType(String));
    }

    //Info:
    //primitiveType: , isMap: false, isArray: false
    //basetype: String, datatype: String, containertype: ,
    if (fullImageUrl != null) {
      formData[r'FullImageUrl'] = parameterToString(_serializers, fullImageUrl,
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
      final serializer =
          _serializers.serializerForType(AbstractGeneralActivityVM);
      final data = _serializers.deserializeWith<AbstractGeneralActivityVM>(
          serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<AbstractGeneralActivityVM>(
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
  Future<Response<BuiltList<AbstractGeneralActivityVM>>>
      v10ApiPublicPageActivitiesGet({
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/Activities';

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
      const type =
          FullType(collectionType, [FullType(AbstractGeneralActivityVM)]);
      final BuiltList<AbstractGeneralActivityVM> data =
          _serializers.deserialize(
              response.data is String
                  ? jsonDecode(response.data)
                  : response.data,
              specifiedType: type);

      return Response<BuiltList<AbstractGeneralActivityVM>>(
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
  Future<Response<ContactUsVM>> v10ApiPublicPageGetContactUsGet({
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/GetContactUs';

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
      final serializer = _serializers.serializerForType(ContactUsVM);
      final data = _serializers.deserializeWith<ContactUsVM>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<ContactUsVM>(
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
  Future<Response<IntroductionVM>> v10ApiPublicPageGetIntroductionGet({
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/GetIntroduction';

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
      final serializer = _serializers.serializerForType(IntroductionVM);
      final data = _serializers.deserializeWith<IntroductionVM>(serializer,
          response.data is String ? jsonDecode(response.data) : response.data);

      return Response<IntroductionVM>(
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
  Future<Response<BuiltList<CenterMainWorkVM>>>
      v10ApiPublicPageGetMainWorksGet({
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/GetMainWorks';

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
      const type = FullType(collectionType, [FullType(CenterMainWorkVM)]);
      final BuiltList<CenterMainWorkVM> data = _serializers.deserialize(
          response.data is String ? jsonDecode(response.data) : response.data,
          specifiedType: type);

      return Response<BuiltList<CenterMainWorkVM>>(
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
  Future<Response<BuiltList<ManagerVM>>> v10ApiPublicPageGetManagersGet({
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/GetManagers';

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
      const type = FullType(collectionType, [FullType(ManagerVM)]);
      final BuiltList<ManagerVM> data = _serializers.deserialize(
          response.data is String ? jsonDecode(response.data) : response.data,
          specifiedType: type);

      return Response<BuiltList<ManagerVM>>(
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
  Future<Response<void>> v10ApiPublicPagePostIdDeletePostDelete(
    String postId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/{postId}/DeletePost'
        .replaceAll('{' r'postId' '}', postId.toString());

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
  Future<Response<void>> v10ApiPublicPageSectionIdDeleteSectionDelete(
    String sectionId, {
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/{sectionId}/DeleteSection'
        .replaceAll('{' r'sectionId' '}', sectionId.toString());

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
  Future<Response<void>> v10ApiPublicPageSetContactUsPut({
    ContactUsVM contactUsVM,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/SetContactUs';

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

    const type = FullType(ContactUsVM);
    final serializedBody =
        _serializers.serialize(contactUsVM, specifiedType: type);
    final jsoncontactUsVM = json.encode(serializedBody);
    bodyData = jsoncontactUsVM;

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
  Future<Response<void>> v10ApiPublicPageSetIntroductionPut({
    IntroductionVM introductionVM,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/SetIntroduction';

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

    const type = FullType(IntroductionVM);
    final serializedBody =
        _serializers.serialize(introductionVM, specifiedType: type);
    final jsonintroductionVM = json.encode(serializedBody);
    bodyData = jsonintroductionVM;

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
  Future<Response<void>> v10ApiPublicPageSetMainWorksPut({
    BuiltList<CenterMainWorkVM> centerMainWorkVM,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/SetMainWorks';

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

    const type = FullType(BuiltList, [FullType(CenterMainWorkVM)]);
    final serializedBody =
        _serializers.serialize(centerMainWorkVM, specifiedType: type);
    final jsoncenterMainWorkVM = json.encode(serializedBody);
    bodyData = jsoncenterMainWorkVM;

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
  Future<Response<void>> v10ApiPublicPageSetManagersPut({
    BuiltList<ManagerVM> managerVM,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final String _path = '/v1.0/Api/PublicPage/SetManagers';

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

    const type = FullType(BuiltList, [FullType(ManagerVM)]);
    final serializedBody =
        _serializers.serialize(managerVM, specifiedType: type);
    final jsonmanagerVM = json.encode(serializedBody);
    bodyData = jsonmanagerVM;

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
