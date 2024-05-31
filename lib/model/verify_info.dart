import 'package:cyphlens_dart_sdk/enum/verify_status.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'gen/verify_info.mapper.dart';

@MappableClass()
class VerifyInfo with VerifyInfoMappable {
  final String message;
  final VerifyStatus status;

  const VerifyInfo({
    required this.message,
    required this.status,
  });
}
