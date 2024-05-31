import 'package:cyphlens_dart_sdk/api/user_api.dart';
import 'package:cyphlens_dart_sdk/cyphlens_dart_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_client.dart';

void main() {
  late UserApi userApi;
  late String userName;
  setUpAll(() {
    userApi = getTestClient('clientId', 'clientSecret').userApi;
    userName = 'testUserName@test.com';
  });

  group('User API test', () {
    test('test get user information', () async {
      final result = await userApi.getUserAccountInfo(username: userName);
      expect(result, isA<UserInfo>());
      expect(result.username, userName);
    });

    test('test enable user information', () async {
      final result = await userApi.enableUserAccountInfo(username: userName);
      expect(result, isA<UserInfo>());
      expect(result.username, userName);
      expect(result.status, UserStatus.active);
    });

    test('test delete user information', () async {
      final result = await userApi.deleteUserAccountInfo(username: userName);
      expect(result, isA<UserInfo>());
      expect(result.username, userName);
      expect(result.status, UserStatus.inactive);
    });
  });
}
