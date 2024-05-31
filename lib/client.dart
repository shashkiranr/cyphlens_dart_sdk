import 'package:cyphlens_dart_sdk/api/image_api.dart';
import 'package:cyphlens_dart_sdk/api/user_api.dart';
import 'package:cyphlens_dart_sdk/api_client.dart';
import 'package:cyphlens_dart_sdk/default_configuration.dart';
import 'package:cyphlens_dart_sdk/model/configuration.dart';

import 'enum/environment.dart';

class Client {
  late Configuration _config;
  late ApiClient apiClient;
  late UserApi userApi;
  late ImageApi imageApi;

  Client({
    required String clientId,
    required String clientSecret,
    required Configuration config,
  }) {
    // copy the config
    _config = defaultConfiguration.copyWith(
      environment: config.environment ?? defaultConfiguration.environment,
      sdkVersion: config.sdkVersion ?? defaultConfiguration.sdkVersion,
      timeout: config.timeout ?? defaultConfiguration.timeout,
      accessToken: config.accessToken ?? defaultConfiguration.accessToken,
      additionalHeaders:
          config.additionalHeaders ?? defaultConfiguration.additionalHeaders,
    );

    // get the base url
    _config = _config.copyWith(baseUrl: _getBaseUri(_config));

    // initiate the api client
    apiClient = ApiClient(
        clientId: clientId, clientSecret: clientSecret, config: _config);

    // initiate all api class instances
    userApi = UserApi(apiClient: apiClient);
    imageApi = ImageApi(apiClient: apiClient);
  }

  String _getBaseUri(Configuration config) {
    if (config.environment == Environment.production) {
      return 'https://api.cyphme.com/api/v1/business';
    }
    if (config.environment == Environment.sandbox ||
        config.environment == Environment.testing) {
      return 'https://staging.cyphme.com/api/v1/business';
    }

    throw 'Could not get Base URL. Invalid environment.';
  }
}
