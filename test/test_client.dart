import 'package:cyphlens_dart_sdk/client.dart';
import 'package:cyphlens_dart_sdk/enum/environment.dart';
import 'package:cyphlens_dart_sdk/model/configuration.dart';

const Configuration defaultConfiguration = Configuration(
  timeout: 60000,
  environment: Environment.testing,
);

Client getTestClient(String clientId, String clientSecret) => Client(
    clientId: clientId,
    clientSecret: clientSecret,
    config: defaultConfiguration);
