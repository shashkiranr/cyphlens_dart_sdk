import 'dart:async';

import 'package:dio/dio.dart';

import 'enum/environment.dart';
import 'model/configuration.dart';

class ApiClient {
  late Dio _apiClient;

  final Configuration config;

  ApiClient(
      {required String clientId,
      required String clientSecret,
      required this.config}) {
    // assert and throw error if config baseUrl is null
    assert(config.baseUrl != null, 'Configuration baseUrl cannot be null');

    // initialize client
    init(clientId, clientSecret, config);
  }

  ///
  /// calls [_getAccessToken] to set the token in the api client.
  ///
  void init(String clientId, String clientSecret, Configuration config) async {
    String accessToken;
    accessToken = config.environment == Environment.testing
        ? ''
        : await _getAccessToken(clientId, clientSecret, config);
    _apiClient = Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          'x-access-token': accessToken
        },
        connectTimeout: Duration(milliseconds: config.timeout ?? 5000),
        baseUrl: config.baseUrl ?? '',
      ),
    );
  }

  ///
  /// retrieves the access token using [clientId] and [clientSecret]
  ///
  Future<String> _getAccessToken(
      String clientId, String clientSecret, Configuration config) async {
    return Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          'x-client-id': clientId,
          'x-client-secret': clientSecret,
        },
        connectTimeout: Duration(milliseconds: config.timeout ?? 5000),
        baseUrl: config.baseUrl ?? '',
      ),
    )
        .get('/getAccessToken')
        .then((value) => value.data['accessToken'] as String)
        .catchError((onError) => throw 'Unable to get access token.$onError');
  }

  Future<void> guard() async {
    // ignore:unnecessary_null_comparison
    if (_apiClient == null) {
      Timer(const Duration(milliseconds: 2000), () {
        // ignore:unnecessary_null_comparison
        if (_apiClient == null) {
          throw 'Api Client is undefined. Please call build';
        }
      });
    }
  }

  Future<T> post<T>({
    required String path,
    Map<String, dynamic>? data,
    Map<String, dynamic>? headers,
  }) async {
    await guard();
    Response response;
    response = await _apiClient
        .post(path, data: data, options: Options(headers: headers))
        .catchError((onError) => throw 'Unable to get access token.$onError');
    return response.data;
  }
}
