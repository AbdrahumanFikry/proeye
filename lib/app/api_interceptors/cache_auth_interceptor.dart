import 'dart:async';
import 'package:get/get.dart';
import 'package:pro_eye/app/services/repos/_cache_service.dart';
import 'package:proeye_api/auth/auth.dart';
import 'package:dio/dio.dart';

class CacheApiKeyAuthInterceptor extends AuthInterceptor {
  @override
  Future onRequest(RequestOptions options) {
    final authInfo = getAuthInfo(options, "apiKey");
    //bearer
    final tokenBag = CacheService.to.userRepo.firstOrNull?.value;
    if (tokenBag != null) {
      for (var info in authInfo) {
        final authName = info["name"];
        final authKeyName = info["keyName"];
        final authWhere = info["where"];

        final apiKey =
            authName == 'Bearer' ? 'Bearer ${tokenBag?.accessToken}' : null;
        if (apiKey != null) {
          if (authWhere == 'query') {
            options.queryParameters[authKeyName] = apiKey;
          } else {
            options.headers[authKeyName] = apiKey;
          }
          break;
        }
      }
    }
    return super.onRequest(options);
  }
}
