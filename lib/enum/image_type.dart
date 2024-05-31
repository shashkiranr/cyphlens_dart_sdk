import 'package:dart_mappable/dart_mappable.dart';

part 'gen/image_type.mapper.dart';

@MappableEnum()
enum ImageType {
  svg('SVG'),
  svgDecoded('SVG_DECODED'),
  png('PNG');

  final String name;

  const ImageType(this.name);
}
