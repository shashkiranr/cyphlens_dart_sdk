import 'enum/environment.dart';
import 'model/configuration.dart';

const Configuration defaultConfiguration = Configuration(
  timeout: 60000,
  sdkVersion: '0.00.001',
  environment: Environment.sandbox,
);
