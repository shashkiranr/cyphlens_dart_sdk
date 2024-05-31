// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../user_info.dart';

class UserInfoMapper extends ClassMapperBase<UserInfo> {
  UserInfoMapper._();

  static UserInfoMapper? _instance;
  static UserInfoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserInfoMapper._());
      UserStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserInfo';

  static String _$id(UserInfo v) => v.id;
  static const Field<UserInfo, String> _f$id = Field('id', _$id);
  static String _$businessId(UserInfo v) => v.businessId;
  static const Field<UserInfo, String> _f$businessId =
      Field('businessId', _$businessId);
  static UserStatus _$status(UserInfo v) => v.status;
  static const Field<UserInfo, UserStatus> _f$status =
      Field('status', _$status);
  static String _$username(UserInfo v) => v.username;
  static const Field<UserInfo, String> _f$username =
      Field('username', _$username);

  @override
  final MappableFields<UserInfo> fields = const {
    #id: _f$id,
    #businessId: _f$businessId,
    #status: _f$status,
    #username: _f$username,
  };

  static UserInfo _instantiate(DecodingData data) {
    return UserInfo(
        id: data.dec(_f$id),
        businessId: data.dec(_f$businessId),
        status: data.dec(_f$status),
        username: data.dec(_f$username));
  }

  @override
  final Function instantiate = _instantiate;

  static UserInfo fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserInfo>(map);
  }

  static UserInfo fromJson(String json) {
    return ensureInitialized().decodeJson<UserInfo>(json);
  }
}

mixin UserInfoMappable {
  String toJson() {
    return UserInfoMapper.ensureInitialized()
        .encodeJson<UserInfo>(this as UserInfo);
  }

  Map<String, dynamic> toMap() {
    return UserInfoMapper.ensureInitialized()
        .encodeMap<UserInfo>(this as UserInfo);
  }

  UserInfoCopyWith<UserInfo, UserInfo, UserInfo> get copyWith =>
      _UserInfoCopyWithImpl(this as UserInfo, $identity, $identity);
  @override
  String toString() {
    return UserInfoMapper.ensureInitialized().stringifyValue(this as UserInfo);
  }

  @override
  bool operator ==(Object other) {
    return UserInfoMapper.ensureInitialized()
        .equalsValue(this as UserInfo, other);
  }

  @override
  int get hashCode {
    return UserInfoMapper.ensureInitialized().hashValue(this as UserInfo);
  }
}

extension UserInfoValueCopy<$R, $Out> on ObjectCopyWith<$R, UserInfo, $Out> {
  UserInfoCopyWith<$R, UserInfo, $Out> get $asUserInfo =>
      $base.as((v, t, t2) => _UserInfoCopyWithImpl(v, t, t2));
}

abstract class UserInfoCopyWith<$R, $In extends UserInfo, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id, String? businessId, UserStatus? status, String? username});
  UserInfoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserInfoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserInfo, $Out>
    implements UserInfoCopyWith<$R, UserInfo, $Out> {
  _UserInfoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserInfo> $mapper =
      UserInfoMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? businessId,
          UserStatus? status,
          String? username}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (businessId != null) #businessId: businessId,
        if (status != null) #status: status,
        if (username != null) #username: username
      }));
  @override
  UserInfo $make(CopyWithData data) => UserInfo(
      id: data.get(#id, or: $value.id),
      businessId: data.get(#businessId, or: $value.businessId),
      status: data.get(#status, or: $value.status),
      username: data.get(#username, or: $value.username));

  @override
  UserInfoCopyWith<$R2, UserInfo, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserInfoCopyWithImpl($value, $cast, t);
}
