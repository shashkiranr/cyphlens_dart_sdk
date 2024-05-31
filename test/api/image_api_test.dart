import 'package:cyphlens_dart_sdk/api/image_api.dart';
import 'package:cyphlens_dart_sdk/cyphlens_dart_sdk.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_client.dart';

void main() {
  late ImageApi imageApi;
  late String userName;
  setUpAll(() {
    imageApi = getTestClient('clientId', 'clientSecret').imageApi;
    userName = 'testUserName@test.com';
  });

  group('Image API test', () {
    test('test get cyphlens image SVG', () async {
      const ImageType imageType = ImageType.svg;
      final result = await imageApi.getLoginCyphlensImage(
          username: userName, imageType: imageType);
      expect(result, isA<ImageInfo>());
      expect(result.username, userName);
      expect(result.imageType, imageType);
    });

    test('test get cyphlens image SVG_DECODED', () async {
      const ImageType imageType = ImageType.svgDecoded;
      final result = await imageApi.getLoginCyphlensImage(
          username: userName, imageType: imageType);
      expect(result, isA<ImageInfo>());
      expect(result.username, userName);
      expect(result.imageType, imageType);
    });

    test('test get cyphlens image PNG', () async {
      const ImageType imageType = ImageType.png;
      final result = await imageApi.getLoginCyphlensImage(
          username: userName, imageType: imageType);
      expect(result, isA<ImageInfo>());
      expect(result.username, userName);
      expect(result.imageType, imageType);
    });

    test('test verify cyphlens image SUCCESS', () async {
      const VerifyStatus status = VerifyStatus.success;
      final result = await imageApi.verifyLoginCyphlensImage(
          username: userName, passcode: '', sessionId: '');
      expect(result, isA<VerifyInfo>());
      expect(result.status, status);
      expect(result.message, 'Verification successful.');
    });
  });
}
