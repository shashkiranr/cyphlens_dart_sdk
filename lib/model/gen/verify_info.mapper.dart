// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../verify_info.dart';

class VerifyInfoMapper extends ClassMapperBase<VerifyInfo> {
  VerifyInfoMapper._();

  static VerifyInfoMapper? _instance;
  static VerifyInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VerifyInfoMapper._());
      VerifyStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VerifyInfo';

  static String _$message(VerifyInfo v) => v.message;
  static const Field<VerifyInfo, String> _f$message =
      Field('message', _$message);
  static VerifyStatus _$status(VerifyInfo v) => v.status;
  static const Field<VerifyInfo, VerifyStatus> _f$status =
      Field('status', _$status);

  @override
  final MappableFields<VerifyInfo> fields = const {
    #message: _f$message,
    #status: _f$status,
  };

  static VerifyInfo _instantiate(DecodingData data) {
    return VerifyInfo(
        message: data.dec(_f$message), status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;

  static VerifyInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VerifyInfo>(map);
  }

  static VerifyInfo fromJson(String json) {
    return ensureInitialized().decodeJson<VerifyInfo>(json);
  }
}

mixin VerifyInfoMappable {
  String toJson() {
    return VerifyInfoMapper.ensureInitialized()
        .encodeJson<VerifyInfo>(this as VerifyInfo);
  }

  Map<String, dynamic> toMap() {
    return VerifyInfoMapper.ensureInitialized()
        .encodeMap<VerifyInfo>(this as VerifyInfo);
  }

  VerifyInfoCopyWith<VerifyInfo, VerifyInfo, VerifyInfo> get copyWith =>
      _VerifyInfoCopyWithImpl(this as VerifyInfo, $identity, $identity);
  @override
  String toString() {
    return VerifyInfoMapper.ensureInitialized()
        .stringifyValue(this as VerifyInfo);
  }

  @override
  bool operator ==(Object other) {
    return VerifyInfoMapper.ensureInitialized()
        .equalsValue(this as VerifyInfo, other);
  }

  @override
  int get hashCode {
    return VerifyInfoMapper.ensureInitialized().hashValue(this as VerifyInfo);
  }
}

extension VerifyInfoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VerifyInfo, $Out> {
  VerifyInfoCopyWith<$R, VerifyInfo, $Out> get $asVerifyInfo =>
      $base.as((v, t, t2) => _VerifyInfoCopyWithImpl(v, t, t2));
}

abstract class VerifyInfoCopyWith<$R, $In extends VerifyInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? message, VerifyStatus? status});
  VerifyInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VerifyInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VerifyInfo, $Out>
    implements VerifyInfoCopyWith<$R, VerifyInfo, $Out> {
  _VerifyInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VerifyInfo> $mapper =
      VerifyInfoMapper.ensureInitialized();
  @override
  $R call({String? message, VerifyStatus? status}) => $apply(FieldCopyWithData({
        if (message != null) #message: message,
        if (status != null) #status: status
      }));
  @override
  VerifyInfo $make(CopyWithData data) => VerifyInfo(
      message: data.get(#message, or: $value.message),
      status: data.get(#status, or: $value.status));

  @override
  VerifyInfoCopyWith<$R2, VerifyInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VerifyInfoCopyWithImpl($value, $cast, t);
}
