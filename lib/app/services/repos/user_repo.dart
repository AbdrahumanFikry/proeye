import 'package:bdaya_token_auth/bdaya_token_auth.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/models/user_claims.dart';
import 'package:pro_eye/app/models/user_info.dart';
import 'package:pro_eye/app/models/user_roles.dart';
import 'package:proeye_api/api.dart';
import 'package:proeye_api/model/token_api_model.dart';
import 'package:proeye_api/model/token_bag_view_model.dart';
import 'package:proeye_api/model/user_view_model.dart';

class UserRepo extends UserTokenRepoBase<String, UserInfo> {
  @override
  String get boxName => 'users';

  static UserViewModel mapFromUserInfo(UserInfo info) {
    return (UserViewModelBuilder()
          ..address = info.address
          ..email = info.email
          ..id = info.id
          ..jobDesc = info.jobDesc
          ..nameAr = info.nameAr
          ..phoneNumber = info.phone
          ..photoUrl = info.photoUrl
          ..role = EnumToString.convertToString(info.userRole))
        .build();
  }

  static UserInfo mapFromViewModel(TokenBagViewModel vm) {
    return UserInfo()
      ..accessToken = vm.accessToken
      ..refreshToken = vm.refreshToken
      ..address = vm.user.address
      ..email = vm.user.email
      ..nameAr = vm.user.nameAr
      ..jobDesc = vm.user.jobDesc
      ..photoUrl = vm.user.photoUrl
      ..phone = vm.user.phoneNumber
      ..claims = vm.claims
          .map((x) => UserClaim()
            ..value = x.value
            ..type = x.type
            ..valueType = x.valueType)
          .toList()
      ..userRole = roleFromString(vm.user.role)
      ..id = vm.user.id;
  }

  @override
  Future<UserInfo> requestNewTokenBag(UserInfo oldBag) async {
    printInfo(info: 'Requesting new tokenBag:');
    final resp = await Get.find<ProeyeApi>()
        .getAccountsApi()
        .v10ApiAccountsRefreshTokenPut(
          tokenApiModel: (TokenApiModelBuilder()
                ..accessToken = oldBag.accessToken
                ..refreshToken = oldBag.refreshToken)
              .build(),
        );
    printInfo(info: 'Got new tokenBag:');
    return mapFromViewModel(resp.data);
  }

  @override
  Future<bool> extraValidation(String userId, UserInfo bag) {
    return Get.find<ProeyeApi>()
        .getAccountsApi()
        .v10ApiAccountsIsAccessTokenValidGet()
        .then((_) => true)
        .catchError((_) => false);
  }
}
