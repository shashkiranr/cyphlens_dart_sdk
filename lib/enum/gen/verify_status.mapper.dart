// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../verify_status.dart';

class VerifyStatusMapper extends EnumMapper<VerifyStatus> {
  VerifyStatusMapper._();

  static VerifyStatusMapper? _instance;
  static VerifyStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VerifyStatusMapper._());
    }
    return _instance!;
  }

  static VerifyStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  VerifyStatus decode(dynamic value) {
    switch (value) {
      case 'success':
        return VerifyStatus.success;
      case 'failure':
        return VerifyStatus.failure;
      case 'fourO1':
        return VerifyStatus.fourO1;
      case 'fourO4':
        return VerifyStatus.fourO4;
      case 'fourO0':
        return VerifyStatus.fourO0;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(VerifyStatus self) {
    switch (self) {
      case VerifyStatus.success:
        return 'success';
      case VerifyStatus.failure:
        return 'failure';
      case VerifyStatus.fourO1:
        return 'fourO1';
      case VerifyStatus.fourO4:
        return 'fourO4';
      case VerifyStatus.fourO0:
        return 'fourO0';
    }
  }
}

extension VerifyStatusMapperExtension on VerifyStatus {
  String toValue() {
    VerifyStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<VerifyStatus>(this) as String;
  }
}
