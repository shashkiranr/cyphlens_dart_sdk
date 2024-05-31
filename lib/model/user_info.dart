import 'package:cyphlens_dart_sdk/enum/user_status.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'gen/user_info.mapper.dart';

@MappableClass()
class UserInfo with UserInfoMappable {
  final String id;
  final String businessId;
  final UserStatus status;
  final String username;

  const UserInfo({
    required this.id,
    required this.businessId,
    required this.status,
    required this.username,
  });
}
