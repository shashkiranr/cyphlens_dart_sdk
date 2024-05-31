import 'package:dart_mappable/dart_mappable.dart';

part 'gen/verify_status.mapper.dart';

@MappableEnum()
enum VerifyStatus {
  success('SUCCESS'),
  failure('FAILURE'),
  fourO1('401'),
  fourO4('404'),
  fourO0('400');

  final String name;

  const VerifyStatus(this.name);
}
