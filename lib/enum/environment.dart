import 'package:dart_mappable/dart_mappable.dart';

part 'gen/environment.mapper.dart';

@MappableEnum()
enum Environment {
  production,
  sandbox,
  testing,
}
