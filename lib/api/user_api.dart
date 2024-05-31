import 'package:cyphlens_dart_sdk/api/base_api.dart';
import 'package:cyphlens_dart_sdk/enum/user_status.dart';
import 'package:cyphlens_dart_sdk/model/user_info.dart';

import '../enum/environment.dart';

final class UserApi extends BaseApi {
  const UserApi({required super.apiClient});

  final UserInfo _dummyResponse = const UserInfo(
    username: 'test@test.com',
    status: UserStatus.pending,
    businessId: 'sqw562ysxxxxws',
    id: 'user_cyph_37rh2378783',
  );

  Future<UserInfo> _getApiResponse(
      {required String username,
      required String path,
      required String type}) async {
    if (apiClient.config.environment == Environment.testing) {
      UserStatus result = switch (type) {
        'get' => UserStatus.pending,
        'enable' => UserStatus.active,
        'delete' || _ => UserStatus.inactive,
      };

      return _dummyResponse.copyWith(status: result, username: username);
    }

    final userResponse =
        await apiClient.post(path: path, data: {'username': username});

    // // need to verify schema of the response.
    return userResponse as UserInfo;
  }

  Future<UserInfo> getUserAccountInfo({required String username}) async {
    return _getApiResponse(username: username, path: '/user/get', type: 'get');
  }

  Future<UserInfo> enableUserAccountInfo({required String username}) async {
    return _getApiResponse(
        username: username, path: '/user/add', type: 'enable');
  }

  Future<UserInfo> deleteUserAccountInfo({required String username}) async {
    return _getApiResponse(
        username: username, path: '/user/delete', type: 'delete');
  }
}
