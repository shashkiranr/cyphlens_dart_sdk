// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../environment.dart';

class EnvironmentMapper extends EnumMapper<Environment> {
  EnvironmentMapper._();

  static EnvironmentMapper? _instance;
  static EnvironmentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EnvironmentMapper._());
    }
    return _instance!;
  }

  static Environment fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Environment decode(dynamic value) {
    switch (value) {
      case 'production':
        return Environment.production;
      case 'sandbox':
        return Environment.sandbox;
      case 'testing':
        return Environment.testing;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Environment self) {
    switch (self) {
      case Environment.production:
        return 'production';
      case Environment.sandbox:
        return 'sandbox';
      case Environment.testing:
        return 'testing';
    }
  }
}

extension EnvironmentMapperExtension on Environment {
  String toValue() {
    EnvironmentMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Environment>(this) as String;
  }
}
