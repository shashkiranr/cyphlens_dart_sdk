// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../configuration.dart';

class ConfigurationMapper extends ClassMapperBase<Configuration> {
  ConfigurationMapper._();

  static ConfigurationMapper? _instance;
  static ConfigurationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConfigurationMapper._());
      EnvironmentMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Configuration';

  static int? _$timeout(Configuration v) => v.timeout;
  static const Field<Configuration, int> _f$timeout =
      Field('timeout', _$timeout, opt: true);
  static String? _$sdkVersion(Configuration v) => v.sdkVersion;
  static const Field<Configuration, String> _f$sdkVersion =
      Field('sdkVersion', _$sdkVersion, opt: true);
  static String? _$userAgentDetail(Configuration v) => v.userAgentDetail;
  static const Field<Configuration, String> _f$userAgentDetail =
      Field('userAgentDetail', _$userAgentDetail, opt: true);
  static String? _$accessToken(Configuration v) => v.accessToken;
  static const Field<Configuration, String> _f$accessToken =
      Field('accessToken', _$accessToken, opt: true);
  static String? _$baseUrl(Configuration v) => v.baseUrl;
  static const Field<Configuration, String> _f$baseUrl =
      Field('baseUrl', _$baseUrl, opt: true);
  static Map<String, String>? _$additionalHeaders(Configuration v) =>
      v.additionalHeaders;
  static const Field<Configuration, Map<String, String>> _f$additionalHeaders =
      Field('additionalHeaders', _$additionalHeaders, opt: true);
  static Environment? _$environment(Configuration v) => v.environment;
  static const Field<Configuration, Environment> _f$environment =
      Field('environment', _$environment, opt: true);

  @override
  final MappableFields<Configuration> fields = const {
    #timeout: _f$timeout,
    #sdkVersion: _f$sdkVersion,
    #userAgentDetail: _f$userAgentDetail,
    #accessToken: _f$accessToken,
    #baseUrl: _f$baseUrl,
    #additionalHeaders: _f$additionalHeaders,
    #environment: _f$environment,
  };

  static Configuration _instantiate(DecodingData data) {
    return Configuration(
        timeout: data.dec(_f$timeout),
        sdkVersion: data.dec(_f$sdkVersion),
        userAgentDetail: data.dec(_f$userAgentDetail),
        accessToken: data.dec(_f$accessToken),
        baseUrl: data.dec(_f$baseUrl),
        additionalHeaders: data.dec(_f$additionalHeaders),
        environment: data.dec(_f$environment));
  }

  @override
  final Function instantiate = _instantiate;

  static Configuration fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Configuration>(map);
  }

  static Configuration fromJson(String json) {
    return ensureInitialized().decodeJson<Configuration>(json);
  }
}

mixin ConfigurationMappable {
  String toJson() {
    return ConfigurationMapper.ensureInitialized()
        .encodeJson<Configuration>(this as Configuration);
  }

  Map<String, dynamic> toMap() {
    return ConfigurationMapper.ensureInitialized()
        .encodeMap<Configuration>(this as Configuration);
  }

  ConfigurationCopyWith<Configuration, Configuration, Configuration>
      get copyWith => _ConfigurationCopyWithImpl(
          this as Configuration, $identity, $identity);
  @override
  String toString() {
    return ConfigurationMapper.ensureInitialized()
        .stringifyValue(this as Configuration);
  }

  @override
  bool operator ==(Object other) {
    return ConfigurationMapper.ensureInitialized()
        .equalsValue(this as Configuration, other);
  }

  @override
  int get hashCode {
    return ConfigurationMapper.ensureInitialized()
        .hashValue(this as Configuration);
  }
}

extension ConfigurationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Configuration, $Out> {
  ConfigurationCopyWith<$R, Configuration, $Out> get $asConfiguration =>
      $base.as((v, t, t2) => _ConfigurationCopyWithImpl(v, t, t2));
}

abstract class ConfigurationCopyWith<$R, $In extends Configuration, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get additionalHeaders;
  $R call(
      {int? timeout,
      String? sdkVersion,
      String? userAgentDetail,
      String? accessToken,
      String? baseUrl,
      Map<String, String>? additionalHeaders,
      Environment? environment});
  ConfigurationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ConfigurationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Configuration, $Out>
    implements ConfigurationCopyWith<$R, Configuration, $Out> {
  _ConfigurationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Configuration> $mapper =
      ConfigurationMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get additionalHeaders => $value.additionalHeaders != null
          ? MapCopyWith(
              $value.additionalHeaders!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(additionalHeaders: v))
          : null;
  @override
  $R call(
          {Object? timeout = $none,
          Object? sdkVersion = $none,
          Object? userAgentDetail = $none,
          Object? accessToken = $none,
          Object? baseUrl = $none,
          Object? additionalHeaders = $none,
          Object? environment = $none}) =>
      $apply(FieldCopyWithData({
        if (timeout != $none) #timeout: timeout,
        if (sdkVersion != $none) #sdkVersion: sdkVersion,
        if (userAgentDetail != $none) #userAgentDetail: userAgentDetail,
        if (accessToken != $none) #accessToken: accessToken,
        if (baseUrl != $none) #baseUrl: baseUrl,
        if (additionalHeaders != $none) #additionalHeaders: additionalHeaders,
        if (environment != $none) #environment: environment
      }));
  @override
  Configuration $make(CopyWithData data) => Configuration(
      timeout: data.get(#timeout, or: $value.timeout),
      sdkVersion: data.get(#sdkVersion, or: $value.sdkVersion),
      userAgentDetail: data.get(#userAgentDetail, or: $value.userAgentDetail),
      accessToken: data.get(#accessToken, or: $value.accessToken),
      baseUrl: data.get(#baseUrl, or: $value.baseUrl),
      additionalHeaders:
          data.get(#additionalHeaders, or: $value.additionalHeaders),
      environment: data.get(#environment, or: $value.environment));

  @override
  ConfigurationCopyWith<$R2, Configuration, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ConfigurationCopyWithImpl($value, $cast, t);
}
