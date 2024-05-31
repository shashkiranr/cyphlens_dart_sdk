import 'package:dart_mappable/dart_mappable.dart';

part 'gen/user_status.mapper.dart';

@MappableEnum()
enum UserStatus {
  pending('PENDING'),
  active('ACTIVE'),
  inactive('INACTIVE');

  final String name;

  const UserStatus(this.name);
}
