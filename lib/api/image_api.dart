import 'package:cyphlens_dart_sdk/api/base_api.dart';
import 'package:cyphlens_dart_sdk/enum/environment.dart';
import 'package:cyphlens_dart_sdk/enum/image_type.dart';
import 'package:cyphlens_dart_sdk/enum/verify_status.dart';
import 'package:cyphlens_dart_sdk/model/image_info.dart';
import 'package:cyphlens_dart_sdk/model/verify_info.dart';

final class ImageApi extends BaseApi {
  final ImageInfo _dummyImageInfo = const ImageInfo(
    username: "user@business.com",
    imageType: ImageType.svg,
    image: "PHN2ZyBiYXNlUHJvZmlsZT0idGlu...",
    sessionId: "xcRTH3567%thASFDASvcQW",
  );

  final VerifyInfo _dummyVerifyInfo = const VerifyInfo(
    status: VerifyStatus.success,
    message: "Verification successful.",
  );

  const ImageApi({required super.apiClient});

  Future<ImageInfo> getLoginCyphlensImage({
    required String username,
    ImageType imageType = ImageType.svg,
  }) async {
    if (apiClient.config.environment == Environment.testing) {
      return _dummyImageInfo.copyWith(username: username, imageType: imageType);
    }

    final imageResponse = await apiClient.post(path: '/login/getCyph', data: {
      'username': username,
      'imageType': imageType.name,
    });

    // // need to verify schema of the response.
    return imageResponse as ImageInfo;
  }

  Future<VerifyInfo> verifyLoginCyphlensImage({
    required String username,
    required String passcode,
    required String sessionId,
  }) async {
    if (apiClient.config.environment == Environment.testing) {
      return _dummyVerifyInfo;
    }

    final imageResponse =
        await apiClient.post(path: '/login/verifyCyph', data: {
      'username': username,
      'passcode': passcode,
      'sessionId': sessionId,
    });

    // // need to verify schema of the response.
    return imageResponse as VerifyInfo;
  }
}
