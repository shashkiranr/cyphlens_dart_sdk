import 'package:cyphlens_dart_sdk/enum/environment.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'gen/configuration.mapper.dart';

@MappableClass()
class Configuration with ConfigurationMappable {
  final int? timeout;
  final String? sdkVersion;
  final String? userAgentDetail;
  final String? accessToken;
  final String? baseUrl;
  final Environment? environment;
  final Map<String, String>? additionalHeaders;

  const Configuration({
    this.timeout,
    this.sdkVersion,
    this.userAgentDetail,
    this.accessToken,
    this.baseUrl,
    this.additionalHeaders,
    this.environment,
  });
}
