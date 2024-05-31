import 'package:cyphlens_dart_sdk/enum/image_type.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'gen/image_info.mapper.dart';

@MappableClass()
class ImageInfo with ImageInfoMappable {
  final String image;
  final String sessionId;
  final ImageType imageType;
  final String username;

  const ImageInfo({
    required this.image,
    required this.sessionId,
    required this.imageType,
    required this.username,
  });
}
